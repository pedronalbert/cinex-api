defmodule Cinex.Graph.Mutations.Customers do
  use Absinthe.Schema.Notation

  alias Cinex.Graph.Resolvers.Customers

  object :customers_mutations do
    field :create_customer, type: :customer do
      arg :first_name, non_null(:string)
      arg :last_name, non_null(:string)

      resolve &Customers.create_customer/3
    end
  end
end