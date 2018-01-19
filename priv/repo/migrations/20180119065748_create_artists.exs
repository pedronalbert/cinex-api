defmodule Cinex.Repo.Migrations.CreateArtists do
  use Ecto.Migration

  def change do
    create table(:artists) do
      add :name, :string
      add :imdb_url, :string
    end
  end
end
