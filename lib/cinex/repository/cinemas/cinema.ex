defmodule Cinex.Repository.Cinemas.Cinema do
  use Cinex.Repository.Schema

  @castable_keys [:name]
  @required_keys [:name]

  schema "cinemas" do
    field :name, :string
  end

  def changeset(%__MODULE__{} = cinema, attrs) do
    cinema
    |> cast(attrs, @castable_keys)
    |> validate_required(@required_keys)
    |> unique_constraint(:name)
  end
end