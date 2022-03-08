defmodule PersonalProject.Repo.Migrations.CreateLeaders do
  use Ecto.Migration

  def change do
    create table(:leaders, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :first_name, :string
      add :email, :string
      add :last_name, :string
      add :job_title, :string
      add :office_location, :string

      timestamps()
    end
  end
end
