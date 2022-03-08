defmodule PersonProjectWeb.InputTypes do

  use Absinthe.Schema.Notation

  input_object :input_leader do
    field :first_name, :string
    field :email, :string
    field :last_name, :string
    field :job_title, :string
    field :office_location, :string
  end
end
