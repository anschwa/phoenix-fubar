defmodule FubarWeb.PageController do
  use FubarWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
