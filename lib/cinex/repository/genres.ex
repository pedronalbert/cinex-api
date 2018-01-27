defmodule Cinex.Repository.Genres do
  alias Cinex.Repo
  alias Cinex.Repository.Entities.Genre

  def create(attrs) do
    %Genre{}
    |> Genre.changeset(attrs)
    |> Repo.insert
  end

  def update(attrs) do
    Genre
    |> Repo.get(attrs.id)
    |> Genre.changeset(attrs)
    |> Repo.update()
  end
end