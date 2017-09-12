defmodule VampExamAppWeb.Api.V1.UserController do
  use VampExamAppWeb, :controller

  alias VampExamApp.Accounts
  alias VampExamApp.Taggers

  action_fallback VampExamAppWeb.FallbackController

  def index(conn, _params) do
    users = Accounts.list_users()
    taggables = Taggers.list_taggables()
    tags = Taggers.list_tags()
    render(conn, "index.json", users: users, taggables: taggables, tags: tags)
  end
end
