defmodule Cinex.Repo.Migrations.CreateMovies do
  use Ecto.Migration

  def change do
    create table(:movies) do
      add :name, :string
      add :plot, :string
      add :poster_url, :string
      add :trailer_url, :string
      add :duration, :integer
      add :year, :integer
      add :certificate, :string
      add :imdb_rate, :integer
      add :rotten_rate, :integer
    end
  end
end
