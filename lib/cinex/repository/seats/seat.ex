defmodule Cinex.Repository.Seats.Seat do
  use Cinex.Repository.Schema

  alias Cinex.Repository.Rooms.Room

  @castable_keys [:row, :col, :room_id]
  @required_keys [:row, :col, :room_id]

  schema "seats" do
    field :col, :integer
    field :row, :integer
    belongs_to :room, Room
  end

  def changeset(%__MODULE__{} = cinema, attrs) do
    cinema
    |> cast(attrs, @castable_keys)
    |> validate_required(@required_keys)
  end
end