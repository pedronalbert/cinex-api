defmodule Cinex.Graph.Resolvers.Cinemas do
  @moduledoc """
    Cinemas resolver
  """
  require Ecto.Query

  alias Cinex.Repo
  alias Cinex.Repository.Entities.Cinema
  alias Cinex.Repository.Cinemas

  def list(_parent, _args, _resolution) do
    cinemas = Cinema
    |> Ecto.Query.order_by(asc: :id)
    |> Repo.all()

    {:ok, cinemas}
  end

  def create(_parent, args, _resolution) do
    args
    |> Cinemas.create
    |> case do
      {_, res} -> {:ok, res}
    end
  end

  def update(_parent, args, _resolution) do
    args
    |> Cinemas.update
    |> case do
      {_, res} -> {:ok, res}
    end
  end
end