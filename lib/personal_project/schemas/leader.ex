defmodule PersonalProject.Schemas.Leader do
  use Ecto.Schema

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id

  schema "leaders" do
    field :first_name
    field :email
    field :last_name
    field :job_title
    field :office_location

    timestamps()

  end


end
