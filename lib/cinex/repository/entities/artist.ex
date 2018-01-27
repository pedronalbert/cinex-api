defmodule Cinex.Repository.Entities.Artist do
  use Cinex.Repository.Entities.Entity

  @castable_keys [:name, :imdb_url]
  @required_keys [:name]

  schema "artists" do
    field :name, :string
    field :imdb_url, :string
  end

  def changeset(%__MODULE__{} = artist, attrs) do
    artist
    |> cast(attrs, @castable_keys)
    |> validate_required(@required_keys)
    |> unique_constraint(:name)
  end
end