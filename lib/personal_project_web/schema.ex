defmodule IntroGraphQlWeb.Schema do
  use Absinthe.Schema
  alias PersonalProject.Databaseops.LeaderOperations


  import_types(PersonProjectWeb.InputTypes)

  query do
    field :name_response, type: :string do
      arg :id, non_null(:id)

      resolve(fn _entity, args, _context ->
        response = LeaderOperations.get_leader(args.id)
        value = Jason.decode(response)
        {:ok, value}
      end)
    end
  end
end
