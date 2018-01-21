defmodule Cinex.Graph.Resolvers.Rooms do
  alias Cinex.Repo
  alias Cinex.Repository.Rooms
  alias Cinex.Repository.Entities.{Room, Cinema}

  def all(%Cinema{} = parent, _args, _resolution) do
    import Ecto.Query

    {:ok, Room |> where(cinema_id: ^parent.id) |> Repo.all}
  end

  def all(_parent, _args, _resolution) do
    {:ok, Repo.all Room}
  end

  def create(_parent, args, _resolution) do
    Rooms.create args
  end
end