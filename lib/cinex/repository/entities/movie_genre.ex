defmodule Cinex.Repository.Entities.MovieGenre do
  use Cinex.Repository.Entities.Entity

  alias Cinex.Repository.Entities.{Movie, Genre}

  schema "movies_genres" do
    belongs_to :movie, Movie
    belongs_to :genre, Genre
  end
end