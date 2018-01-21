defmodule Cinex.Graph.Queries.Customers do
  use Absinthe.Schema.Notation

  alias Cinex.Graph.Resolvers.Customers

  object :customers_queries do
    field :customers, list_of(:customer) do
      resolve &Customers.list/3
    end
  end
end