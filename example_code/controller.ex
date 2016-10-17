defmodule UserDefdRoutes.NewController do
  use UserDefdRoutes.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
