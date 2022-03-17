defmodule PersonProjectWeb.Io.OutputTypes do

  use Absinthe.Schema.Notation

  object :output_leader do
    field :first_name, :string
    field :email, :string
    field :last_name, :string
    field :job_title, :string
    field :office_location, :string

  end
end
