defmodule Cinex.Repo.Migrations.CreateSeats do
  use Ecto.Migration

  def change do
    create table(:seats) do
      add :row, :integer
      add :col, :integer
      add :room_id, references(:rooms)
    end
  end
end
