defmodule PersonalProjectWeb.PageController do
  use PersonalProjectWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
