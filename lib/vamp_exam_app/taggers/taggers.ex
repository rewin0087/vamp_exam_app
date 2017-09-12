defmodule VampExamApp.Taggers do

  import Ecto.Query, warn: false
  alias VampExamApp.Repo

  alias VampExamApp.Taggers.Tag

  @doc """
  Returns the list of tags.

  ## Examples

      iex> list_tags()
      [%Tag{}, ...]

  """
  def list_tags do
    Repo.all(Tag)
  end

  alias VampExamApp.Taggers.Taggable

  @doc """
  Returns the list of taggables.

  ## Examples

      iex> list_taggables()
      [%Taggable{}, ...]

  """
  def list_taggables do
    Repo.all(Taggable) |> Repo.preload(:tag)
  end
end
