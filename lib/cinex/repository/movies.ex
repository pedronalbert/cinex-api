defmodule Cinex.Repository.Movies do
  alias Ecto.Changeset
  alias Cinex.Repo
  alias Cinex.Repository.Entities.{Movie, Genre}

  def update(attrs) do
    Movie
    |> Repo.get(attrs.id)
    |> Repo.preload(:genres)
    |> Movie.changeset(attrs)
    |> Repo.update()
  end

  def create(attrs) do
    genres_assoc = get_genres_assoc(attrs.genres)

    %Movie{}
    |> Movie.changeset(attrs)
    |> Changeset.put_assoc(:genres, genres_assoc)
    |> Repo.insert
  end

  def test_creation do
    movie = %{
      name: "The maze runnering",
      genres: [
        %{name: "foo"},
        %{name: "Cat"}
      ]
    }

    create(movie)
  end

  defp get_genres_assoc(genres \\ []) do
    genres
    |> Enum.map(fn (genre_attrs) -> Genre.changeset(%Genre{}, genre_attrs) end)
  end
end