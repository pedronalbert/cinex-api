defmodule Cinex.Repository.Rooms do
  @moduledoc """
    Module for managing Rooms repository
  """

  alias Cinex.Repo
  alias Cinex.Repository.Seats.Seat
  alias __MODULE__.Room
  alias Ecto.Multi

  def create(attrs) do
    Multi.new
    |> create(attrs)
    |> create_seats(attrs)
    |> Repo.transaction
    |> case do
      {:ok, %{room: room}} -> {:ok, room}
    end
  end

  defp create(multi, attrs) do
    changeset = %Room{} |> Room.changeset(attrs)
    Multi.insert(multi, :room, changeset)
  end

  defp build_seats(room, cols, rows) do
    1..cols
    |> Enum.reduce([], fn(col, acc) ->
      seats = 1..rows
      |> Enum.map(fn row ->
        %{room_id: room.id, col: col, row: row}
      end)

      acc ++ seats
    end)
  end

  defp create_seats(multi, attrs) do
    multi
    |> Multi.run(:seats, fn (%{room: room}) -> 
      room
      |> build_seats(attrs.cols, attrs.rows)
      |> Enum.reduce(Multi.new, fn (attrs, multi) ->
        changeset = %Seat{} |> Seat.changeset(attrs)
        multi |> Multi.insert(String.to_atom("seat_#{attrs.col}_#{attrs.row}"), changeset)
      end)
      |> Repo.transaction
    end)
  end
end