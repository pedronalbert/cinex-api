defmodule Cinex.Repository.Entities.Genre do
  use Cinex.Repository.Entities.Entity

  schema "genres" do
    field :name, :string
  end
end