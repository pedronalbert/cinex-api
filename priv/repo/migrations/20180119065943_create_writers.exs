defmodule Cinex.Repo.Migrations.CreateWriters do
  use Ecto.Migration

  def change do
    create table(:writers) do
      add :artist_id, references(:artists)
      add :movie_id, references(:movies)
    end
  end
end
