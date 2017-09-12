defmodule VampExamApp.Repo.Migrations.CreateTags do
  use Ecto.Migration

  def change do
    create table(:tags, primary_key: false) do
      add :id, :uuid, primary_key: true
      add :name, :string
      add :short_name, :string
      add :type, :string

      timestamps()
    end

  end
end
