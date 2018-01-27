defmodule Cinex.Repository.Entities.Genre do
  use Cinex.Repository.Entities.Entity

  @castable_keys ~w[name]a
  @required_keys ~w[name]a

  schema "genres" do
    field :name, :string
  end

  def changeset(%__MODULE__{} = genre, attrs) do
    genre
    |> cast(attrs, @castable_keys)
    |> validate_required(@required_keys)
    |> unique_constraint(:name)
  end
end