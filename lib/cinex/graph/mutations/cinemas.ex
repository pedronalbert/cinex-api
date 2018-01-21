defmodule Cinex.Graph.Mutations.Cinemas do
  use Absinthe.Schema.Notation

  alias Cinex.Graph.Resolvers.Cinemas

  object :cinemas_mutations do
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