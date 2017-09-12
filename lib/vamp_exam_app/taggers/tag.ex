defmodule VampExamApp.Taggers.Tag do
  use Ecto.Schema
  import Ecto.Changeset
  alias VampExamApp.Taggers.{Taggable, Tag}

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "tags" do
    field :name, :string
    field :short_name, :string
    field :type, :string
    has_many :taggables, Taggable
    has_many :users, through: [:taggables, :user]

    timestamps()
  end

  @doc false
  def changeset(%Tag{} = tag, attrs) do
    tag
    |> cast(attrs, [:name, :short_name, :type])
    |> validate_required([:name, :short_name, :type])
  end
end
