defmodule FubarWeb.Router do
  use FubarWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :login_layout do
    plug :put_root_layout, {FubarWeb.LayoutView, :login}
  end

  scope "/", FubarWeb do
    pipe_through [:browser, :login_layout]

    get "/", LoginController, :index
  end

  scope "/", FubarWeb do
    pipe_through :browser

    get "/", PageController, :index
  end
end
