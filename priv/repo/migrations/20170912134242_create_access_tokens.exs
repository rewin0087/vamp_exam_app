defmodule VampExamApp.Repo.Migrations.CreateAccessTokens do
  use Ecto.Migration

  def change do
    create table(:access_tokens, primary_key: false) do
      add :id, :uuid, primary_key: true
      add :token, :text
      add :user_id, references(:users, on_delete: :delete_all, type: :uuid)

      timestamps()
    end

    create index(:access_tokens, [:user_id])
  end
end
