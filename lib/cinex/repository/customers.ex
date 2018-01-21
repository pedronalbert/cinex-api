defmodule Cinex.Repository.Customers do
  @moduledoc """
    Module for managing customers repository
  """

  alias Cinex.Repo
  alias __MODULE__.Customer

  def list do
    {:ok, Customer |> Repo.all}
  end

  def create(attrs) do
    %Customer{} |> Customer.changeset(attrs) |> Repo.insert()
  end
end