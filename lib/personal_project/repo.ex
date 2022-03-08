defmodule PersonalProject.Repo do
  use Ecto.Repo,
    otp_app: :personal_project,
    adapter: Ecto.Adapters.Postgres
end
