defmodule Cinex.Graph.Resolvers.Rooms do
  alias Cinex.Repository.Rooms

  def create(_parent, args, _resolution) do
    Rooms.create(args)
  end
end