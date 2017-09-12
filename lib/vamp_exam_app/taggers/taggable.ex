defmodule VampExamApp.Taggers.Taggable do
  use Ecto.Schema
  import Ecto.Changeset
  alias VampExamApp.Accounts.User
  alias VampExamApp.Taggers.{Taggable, Tag}

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "taggables" do
    belongs_to :user, User, foreign_key: :user_id
    belongs_to :tag, Tag, foreign_key: :tag_id

    timestamps()
  end

  @doc false
  def changeset(%Taggable{} = taggable, attrs) do
    taggable
    |> cast(attrs, [])
    |> validate_required([])
  end
end
