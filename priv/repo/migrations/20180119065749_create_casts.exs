defmodule Cinex.Repo.Migrations.CreateCasts do
  use Ecto.Migration

  def change do
    create table(:casts) do
      add :name, :string
      add :artist_id, references(:artists)
      add :movie_id, references(:movies)
    end
  end
end
