defmodule PersonalProject.Repo.Migrations.CreateSalters do
  use Ecto.Migration

  def change do
    create table(:salters, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :first_name, :string
      add :email, :string
      add :last_name, :string
      add :job_title, :string
      add :office_location, :string
      add :team_id, references(:teams, on_delete: :nothing, type: :binary_id)
      add :leader_id, references(:leaders, on_delete: :nothing, type: :binary_id)
      timestamps()
    end

    create index(:salters, [:team_id])
    create index(:salters, [:leader_id])
  end
end
