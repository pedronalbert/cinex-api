defmodule Cinex.Graph.Mutations.Rooms do
  use Absinthe.Schema.Notation

  alias Cinex.Graph.Resolvers.Rooms

  object :rooms_mutations do
    field :create_room, type: :room do
      arg :name, non_null(:string)
      arg :cols, non_null(:integer)
      arg :rows, non_null(:integer)
      arg :cinema_id, non_null(:integer)

      resolve &Rooms.create/3
    end
  end
end