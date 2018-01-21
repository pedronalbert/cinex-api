defmodule Cinex.Repository.Entities.Room do
  @moduledoc """
  room entity
  """

  use Cinex.Repository.Entities.Entity

  alias Cinex.Repository.Entities.{Cinema, Seat}

  @castable_keys [:name, :cinema_id]
  @required_keys [:name, :cinema_id]

  schema "rooms" do
    field :name, :string
    belongs_to :cinema, Cinema
    has_many :seats, Seat
  end

  def changeset(%__MODULE__{} = room, attrs) do
    room
    |> cast(attrs, @castable_keys)
    |> validate_required(@required_keys)
  end
end