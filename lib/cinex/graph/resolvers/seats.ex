defmodule Cinex.Graph.Resolvers.Seats do
  alias Cinex.Repo
  alias Cinex.Repository.Entities.{Room, Seat}

  def all(%Room{} = parent, _args, _resolution) do
    import Ecto.Query

    {:ok, Seat |> where(room_id: ^parent.id) |> Repo.all}
  end
end