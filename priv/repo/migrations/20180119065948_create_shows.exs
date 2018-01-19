defmodule Cinex.Repo.Migrations.CreateShows do
  use Ecto.Migration

  def change do
    create table(:shows) do
      add :cinema_id, references(:cinemas)
      add :date, :date
      add :movie_id, references(:movies)
      add :is_subtitled, :boolean
      add :is_3d, :boolean
      add :is_premiere, :boolean
    end
  end
end
