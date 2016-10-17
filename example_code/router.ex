defmodule UserDefdRoutes.Router do
  use UserDefdRoutes.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", UserDefdRoutes do
    pipe_through :browser # Use the default browser stack

    get "/", CodeInputController, :index
    post "/code", CodeInputController, :load
    get "/new_endpoint", NewController, :index
  end
end
