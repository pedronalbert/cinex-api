defmodule Cinex.Repo.Migrations.CreateCustomers do
  use Ecto.Migration

  def change do
    create table(:customers) do
      add :email, :string
      add :password, :string
      add :first_name, :string
      add :last_name, :string
      add :dni, :string
      add :birthdate, :date
    end
  end
end
