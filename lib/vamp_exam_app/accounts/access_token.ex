defmodule VampExamApp.Accounts.AccessToken do
  use Ecto.Schema
  import Ecto.Changeset
  alias VampExamApp.Accounts.{AccessToken, User}


  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "access_tokens" do
    field :token, :string
    belongs_to :user, User, foreign_key: :user_id

    timestamps()
  end

  @doc false
  def changeset(%AccessToken{} = access_token, attrs) do
    access_token
    |> cast(attrs, [:token])
    |> validate_required([:token])
  end
end
