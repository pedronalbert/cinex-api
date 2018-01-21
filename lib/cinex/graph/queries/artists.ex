defmodule Cinex.Graph.Queries.Artists do
  use Absinthe.Schema.Notation

  alias Cinex.Graph.Resolvers.Artists

  object :artists_queries do
    field :artists, list_of(:artist) do
      resolve &Artists.list/3
    end
  end
end