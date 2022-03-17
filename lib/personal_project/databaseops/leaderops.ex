defmodule PersonalProject.Databaseops.LeaderOperations do
  @moduledoc false

  alias PersonalProject.Schemas.Leader
  alias PersonalProject.Repo

  def get_leader(id) do
    Leader
    |> Repo.get_by(%{id: id})

  end

  def get_all(_args, _res) do
    value = Leader |> Repo.all()
    {:ok, value}
  end

  def create_leader(leader) do
    Repo.insert(%Leader{first_name: leader.first_name, email: leader.email, last_name: leader.last_name, office_location: leader.office_location, job_title: leader.job_title})

  end

end
