defmodule Cinex.Graph.Resolvers.Artists do
  @moduledoc """
    Artists resolver
  """
  require Ecto.Query

  alias Cinex.Repo
  alias Cinex.Repository.Entities.Artist
  alias Cinex.Repository.Artists

  def list(_parent, _args, _resolution) do
    artists = Artist
    |> Ecto.Query.order_by(asc: :id)
    |> Repo.all()

    {:ok, artists}
  end

  def create(_parent, args, _resolution) do
    args
    |> Artists.create
    |> case do
      {_, res} -> {:ok, res} 
    end
  end

  def update(_parent, args, _resolution) do
    args
    |> Artists.update
    |> case do
      {_, res} -> {:ok, res} 
    end
  end
end