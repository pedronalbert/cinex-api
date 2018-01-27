defmodule Cinex.Graph.Resolvers.Genres do
  require Ecto.Query

  alias Cinex.Repo
  alias Cinex.Repository.{Entities.Genre, Genres}

  def list(_parent, _args, _resolution) do
    genres = Genre
    |> Ecto.Query.order_by(asc: :id)
    |> Repo.all()

    {:ok, genres}
  end

  def create(_parent, args, _resolution) do
    args
    |> Genres.create
    |> case do
      {_, res} -> {:ok, res}
    end
  end

  def update(_pareng, args, _resolution) do
    args
    |> Genres.update
    |> case do
      {_, res} -> {:ok, res}
    end
  end
end