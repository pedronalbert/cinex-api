defmodule Cinex.Repo.Migrations.CreateMoviesCasts do
  use Ecto.Migration

  def change do
    create table(:movies_casts) do
      add :name, :string
      add :artist_id, references(:artists)
      add :movie_id, references(:movies)
    end
  end
end
