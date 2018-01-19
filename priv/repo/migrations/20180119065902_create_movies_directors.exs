defmodule Cinex.Repo.Migrations.CreateMoviesDirectors do
  use Ecto.Migration

  def change do
    create table(:movies_directos) do
      add :artist_id, references(:artists)
      add :movie_id, references(:movies)
    end
  end
end
