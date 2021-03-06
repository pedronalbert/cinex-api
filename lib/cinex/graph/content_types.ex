defmodule Cinex.Graph.ContentTypes do
  use Absinthe.Schema.Notation

  alias Cinex.Graph.Resolvers.Seats

  object :customer do
    field :id, :id
    field :first_name, :string
    field :last_name, :string
  end

  object :seat do
    field :id, :id
    field :col, :integer
    field :row, :integer
  end

  object :room do
    field :id, :id
    field :name, :string
    field :seats, list_of(:seat) do
      resolve &Seats.all/3
    end
  end

  object :movie do
    field :id, :id
    field :name, :string
    field :plot, :string
    field :poster_url, :string
    field :trailer_url, :string
    field :duration, :integer
    field :year, :integer
    field :certificate, :string
    field :imdb_rate, :integer
    field :rotten_rate, :integer
  end
end