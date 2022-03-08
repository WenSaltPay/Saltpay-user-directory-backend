defmodule PersonalProject.Repo.Migrations.CreateAddresses do
  use Ecto.Migration

  def change do
    create table(:addresses, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :street_line_one, :string
      add :street_line_two, :string
      add :city, :string
      add :country, :string
      add :zipcode, :string
      add :leader_id, references(:leaders, on_delete: :nothing, type: :binary_id)
      add :salter_id, references(:salters, on_delete: :nothing, type: :binary_id)

      timestamps()
    end

    create index(:addresses, [:leader_id])
    create index(:addresses, [:salter_id])
  end
end
