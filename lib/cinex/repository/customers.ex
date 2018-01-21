defmodule Cinex.Repository.Customers do
  @moduledoc """
    Module for managing customers repository
  """

  alias Cinex.Repo
  alias Cinex.Repository.Entities.Customer

  def create(attrs) do
    %Customer{} |> Customer.changeset(attrs) |> Repo.insert()
  end
end