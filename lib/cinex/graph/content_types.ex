defmodule Cinex.Graph.ContentTypes do
  use Absinthe.Schema.Notation

  object :customer do
    field :id, :id
    field :first_name, :string
    field :last_name, :string
  end

  object :cinema do
    field :id, :id
    field :name, :string
  end

  object :room do
    field :id, :id
    field :name, :string
  end
end