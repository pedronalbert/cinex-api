defmodule Cinex.Repository.Entities.Customer do
  use Cinex.Repository.Entities.Entity

  @castable_keys [:email, :password, :first_name, :last_name, :dni, :birthdate]

  schema "customers" do
    field :email, :string
    field :password, :string
    field :first_name, :string
    field :last_name, :string
    field :dni, :string
    field :birthdate, :date
  end

  def changeset(%__MODULE__{} = customer, attrs) do
    customer |> cast(attrs, @castable_keys)
  end
end