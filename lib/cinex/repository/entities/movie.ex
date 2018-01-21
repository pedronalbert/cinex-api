defmodule Cinex.Repository.Entities.Movie do
  use Cinex.Repository.Entities.Entity

  alias Cinex.Repository.Entities.MovieGenre

  @castable_keys ~w[
    name
    plot
    poster_url
    trailer_url
    duration
    year
    certificate
    imdb_rate
    rotten_rate
  ]a

  schema "movies" do
    field :name, :string
    field :plot, :string
    field :poster_url, :string
    field :trailer_url, :string
    field :duration, :integer
    field :year, :integer
    field :certificate, :string
    field :imdb_rate, :integer
    field :rotten_rate, :integer

    has_many :movies_genres, MovieGenre
    has_many :genres, through: [:movies_genres, :genre]
  end

  def changeset(%__MODULE__{} = movie, attrs) do
    movie
    |> cast(attrs, @castable_keys)
  end
end