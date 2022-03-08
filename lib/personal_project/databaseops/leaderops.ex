defmodule PersonalProject.Databaseops.LeaderOperations do
  @moduledoc false

  alias PersonalProject.Schemas.Leader
  alias PersonalProject.Repo

  def get_leader(id) do
    Leader
    |> Repo.get_by(%{id: id})
  end

end
