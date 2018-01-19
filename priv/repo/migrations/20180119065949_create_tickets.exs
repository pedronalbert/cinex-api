defmodule Cinex.Repo.Migrations.CreateTickets do
  use Ecto.Migration

  def change do
    create table(:tickets) do
      add :customer_id, references(:customers)
      add :show_id, references(:shows)
      add :seat_id, references(:seats)
    end
  end
end
