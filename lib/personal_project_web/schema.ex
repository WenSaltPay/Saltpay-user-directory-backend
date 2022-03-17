defmodule PersonProjectWeb.Schema do
  use Absinthe.Schema
  alias PersonalProject.Databaseops.LeaderOperations

  import_types(PersonProjectWeb.Io.OutputTypes)
  import_types(PersonProjectWeb.Io.InputTypes)

  query do
    field :get_leader, type: :output_leader do
      arg :id, non_null(:id)

      resolve(fn _entity, args, _context ->
        response = LeaderOperations.get_leader(args.id)
        {:ok, response}
      end)
    end

    field :get_all_leaders, list_of(:output_leader) do
       resolve &LeaderOperations.get_all/2
    end

    field :add_leader, :output_leader do
      arg :leader, non_null(:input_leader)

      resolve(fn _entity, args, _context ->
        response = LeaderOperations.create_leader(args.leader)
        {:ok, response}
      end)
    end

end
end
