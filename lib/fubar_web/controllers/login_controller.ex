defmodule FubarWeb.LoginController do
  use FubarWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
