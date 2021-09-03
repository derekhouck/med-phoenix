defmodule MainEventDrawWeb.PageController do
  use MainEventDrawWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
