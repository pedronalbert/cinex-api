defmodule Cinex.Graph.Queries.Cinemas do
  use Absinthe.Schema.Notation

  alias Cinex.Graph.Resolvers.Cinemas

  object :cinemas_queries do
    field :cinemas, list_of(:cinema) do
      resolve &Cinemas.list/3
    end
  end
end