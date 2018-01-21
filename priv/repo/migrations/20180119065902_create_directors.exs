defmodule Cinex.Repo.Migrations.CreateDirectors do
  use Ecto.Migration

  def change do
    create table(:directors) do
      add :artist_id, references(:artists)
      add :movie_id, references(:movies)
    end
  end
end
