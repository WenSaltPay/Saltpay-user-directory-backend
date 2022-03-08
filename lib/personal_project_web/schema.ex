defmodule IntroGraphQlWeb.Schema do
  use Absinthe.Schema

  query do
    field :name_response, :string do
      IO.inspect("test")

      resolve(fn _entity, _args, _context ->
        {:ok, "wen"}
      end)
    end
  end
end
