defmodule UserDefdRoutes.CodeInputController do
  use UserDefdRoutes.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def load(conn, params) do
    IO.puts "code: #{params["load"]["code_text"]}"
    Code.eval_string("#{params["load"]["code_text"]}")
    render conn, "index.html"
  end
end
