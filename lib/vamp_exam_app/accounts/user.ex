defmodule VampExamApp.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias VampExamApp.Accounts.{User, AccessToken}
  alias VampExamApp.Taggers.Taggable

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "users" do
    field :country, :string
    field :full_name, :string
    has_many :taggables, Taggable
    has_many :tags, through: [:taggables, :tag]
    has_one :access_token, AccessToken

    timestamps()
  end

  @doc false
  def changeset(%User{} = user, attrs) do
    user
    |> cast(attrs, [:full_name, :country])
    |> validate_required([:full_name, :country])
  end
end
