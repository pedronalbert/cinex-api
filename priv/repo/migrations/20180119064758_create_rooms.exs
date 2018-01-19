defmodule Cinex.Repo.Migrations.CreateRooms do
  use Ecto.Migration

  def change do
    create table(:rooms) do
      add :name, :string
      add :cinema_id, references(:cinemas)
    end
  end
end
