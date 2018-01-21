defmodule Cinex.Graph.ContentTypes do
  alias Cinex.Graph.Resolvers.{Rooms}

  use Absinthe.Schema.Notation

  object :customer do
    field :id, :id
    field :first_name, :string
    field :last_name, :string
  end

  object :room do
    field :id, :id
    field :name, :string
  end

  object :cinema do
    field :id, :id
    field :name, :string
    field :rooms, list_of(:room) do
      resolve &Rooms.all/3
    end
  end
end