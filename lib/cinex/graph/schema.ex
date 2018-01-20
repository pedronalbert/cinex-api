defmodule Cinex.Graph.Schema do
  @moduledoc """
    Graph schema
  """

  use Absinthe.Schema

  import_types Cinex.Graph.ContentTypes

  alias Cinex.Graph.Resolvers.{Customers, Cinemas}

  query do
    field :customers, list_of(:customer) do
      resolve &Customers.list/3
    end

    field :cinemas, list_of(:cinema) do
      resolve &Cinemas.list/3
    end
  end

  mutation do
    field :create_customer, type: :customer do
      arg :first_name, non_null(:string)
      arg :last_name, non_null(:string)

      resolve &Customers.create_customer/3
    end

    field :create_cinema, type: :cinema do
      arg :name, non_null(:string)

      resolve &Cinemas.create/3
    end

    field :delete_cinema, :string do
      arg :id, non_null(:integer)

      resolve &Cinemas.delete/3
    end

    field :update_cinema, type: :cinema do
      arg :id, :id
      arg :name, non_null(:string)

      resolve &Cinemas.update/3
    end
  end
end
