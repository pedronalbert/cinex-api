defmodule Cinex.Graph.Schema.Genre do
  use Absinthe.Schema.Notation

  import Kronky.Payload

  alias Cinex.Graph.Resolvers.Genres

  object :genre, description: "Movie Genre" do
    field :id, non_null(:id)
    field :name, :string
  end

  object :genres_queries do
    field :genres, list_of(:genre) do
      resolve &Genres.list/3
    end
  end

  payload_object(:genre_payload, :genre)

  object :genres_mutations do
    field :create_genre, type: :genre_payload do
      arg :name, non_null(:string)

      resolve &Genres.create/3
      middleware &build_payload/2
    end

    field :update_genre, type: :genre_payload do
      arg :id, non_null(:id)
      arg :name, non_null(:string)

      resolve &Genres.update/3
      middleware &build_payload/2
    end
  end
end