defmodule Cinex.Graph.Schema.Artist do
  use Absinthe.Schema.Notation

  import Kronky.Payload

  alias Cinex.Graph.Resolvers.Artists

  object :artist do
    field :id, non_null(:id)
    field :name, :string
    field :imdb_url, :string
  end

  object :artists_queries do
    field :artists, list_of(:artist) do
      resolve &Artists.list/3
    end
  end

  payload_object(:artist_payload, :artist)

  object :artists_mutations do
    field :create_artist, type: :artist_payload do
      arg :name, non_null(:string)
      arg :imdb_url, :string

      resolve &Artists.create/3
      middleware &build_payload/2
    end

    field :update_artst, type: :artist_payload do
      arg :id, non_null(:id)
      arg :name, non_null(:string)
      arg :imdb_url, :string

      resolve &Artists.update/3
      middleware &build_payload/2
    end
  end
end