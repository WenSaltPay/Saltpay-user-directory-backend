defmodule PersonalProject.Repo.Migrations.CreateTeams do
  use Ecto.Migration

  def change do
    create table(:teams, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :team_name, :string
      add :department, :string
      add :team_base, :string
      add :leader_id, references(:leaders, on_delete: :nothing, type: :binary_id)
    end

    create index(:teams, [:leader_id])
  end
end
