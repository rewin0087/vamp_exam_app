defmodule VampExamApp.Accounts do
  @moduledoc """
  The Accounts context.
  """

  import Ecto.Query, warn: false
  alias VampExamApp.Repo

  alias VampExamApp.Accounts.User

  @doc """
  Returns the list of users.

  ## Examples

      iex> list_users()
      [%User{}, ...]

  """
  def list_users do
    Repo.all(User)
    |> Repo.preload([taggables: :tag])
  end
end
