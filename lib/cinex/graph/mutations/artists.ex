defmodule Cinex.Graph.Mutations.Artists do
  use Absinthe.Schema.Notation

  alias Cinex.Graph.Resolvers.Artists

  object :artists_mutations do
    field :create_artist, type: :artist do
      arg :name, non_null(:string)
      arg :imdb_url, :string

      resolve &Artists.create/3
    end

    field :update_artst, type: :artist do
      arg :id, non_null(:id)
      arg :name, non_null(:string)
      arg :imdb_url, :string

      resolve &Artists.update/3
    end

    field :delete_artist, :string do
      arg :id, non_null(:id)

      resolve &Artists.delete/3
    end
  end
end