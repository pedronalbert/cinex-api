defmodule Cinex.Repo.Migrations.CreateCinemas do
  use Ecto.Migration

  def change do
    create table(:cinemas) do
      add :name, :string
    end
    create unique_index(:cinemas, [:name])
  end
end
