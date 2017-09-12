defmodule VampExamAppWeb.PageController do
  use VampExamAppWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
