defmodule Cinex.Graph.Schema.Cinema do
  use Absinthe.Schema.Notation

  import Kronky.Payload

  alias Cinex.Graph.Resolvers.Cinemas

  object :cinema do
    field :id, non_null(:id)
    field :name, :string
  end

  object :cinemas_queries do
    field :cinemas, list_of(:cinema) do
      resolve &Cinemas.list/3
    end
  end

  payload_object(:cinema_payload, :cinema)

  object :cinemas_mutations do
    field :create_cinema, type: :cinema_payload do
      arg :name, non_null(:string)

      resolve &Cinemas.create/3
      middleware &build_payload/2
    end

    field :update_artst, type: :cinema_payload do
      arg :id, non_null(:id)
      arg :name, non_null(:string)

      resolve &Cinemas.update/3
      middleware &build_payload/2
    end
  end
end