defmodule Cinex.Repository.Entities.Cinema do
  use Cinex.Repository.Entities.Entity

  alias Cinex.Repository.Entities.Room

  @castable_keys [:name]
  @required_keys [:name]

  schema "cinemas" do
    field :name, :string
    has_many :rooms, Room
  end

  def changeset(%__MODULE__{} = cinema, attrs) do
    cinema
    |> cast(attrs, @castable_keys)
    |> validate_required(@required_keys)
    |> unique_constraint(:name)
  end
end