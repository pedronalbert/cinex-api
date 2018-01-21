defmodule Cinex.Graph.ContentTypes do
  use Absinthe.Schema.Notation

  alias Cinex.Graph.Resolvers.{Rooms, Seats}

  object :customer do
    field :id, :id
    field :first_name, :string
    field :last_name, :string
  end

  object :seat do
    field :id, :id
    field :col, :integer
    field :row, :integer
  end

  object :room do
    field :id, :id
    field :name, :string
    field :seats, list_of(:seat) do
      resolve &Seats.all/3
    end
  end

  object :cinema do
    field :id, :id
    field :name, :string
    field :rooms, list_of(:room) do
      resolve &Rooms.all/3
    end
  end
end