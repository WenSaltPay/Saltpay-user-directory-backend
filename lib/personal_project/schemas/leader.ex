defmodule PersonalProject.Schemas.Leader do
  use Ecto.Schema
  import Ecto.Changeset
  alias PersonalProject.Schemas.Leader

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

  def changeset(%Leader{} = leader, attrs) do
    leader
    |> cast(attrs, [:first_name, :email, :last_name, :job_title, :office_location])
    |> validate_required([:first_name, :email, :last_name, :job_title, :office_location])
    |> validate_format(:email, ~r/@/)
    |> unique_constraint(:email)
    |> unique_constraint(:first_name)
  end

  def age_older_than_18(:birth_date, %Date{} = birth_date) do
    {year, month, date} = Date.to_erl(Date.utc_today())
    min_date = Date.from_erl!({year - 18, month, date})
    case Date.compare(min_date, birth_date) do
      :lt -> [birth_date: "Must be over 18 years old"]
      _ -> []
    end
  end




end
