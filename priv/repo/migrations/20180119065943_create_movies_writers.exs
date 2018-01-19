defmodule Cinex.Repo.Migrations.CreateMoviesWriters do
  use Ecto.Migration

  def change do
    create table(:movies_writers) do
      add :artist_id, references(:artists)
      add :movie_id, references(:movies)
    end
  end
end
