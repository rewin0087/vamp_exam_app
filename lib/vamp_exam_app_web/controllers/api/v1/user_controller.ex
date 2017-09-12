defmodule VampExamAppWeb.Api.V1.UserController do
  use VampExamAppWeb, :controller
  alias VampExamApp.Accounts

  action_fallback VampExamAppWeb.FallbackController

  def index(conn, _params) do
    users = Accounts.list_users()
    render(conn, "index.json-api", data: users)
  end
end
