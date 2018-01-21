defmodule Cinex.Graph.Resolvers.Customers do
  require Logger

  alias Cinex.Repository.Entities.Customer
  alias Cinex.Repository.Customers

  def list(_parent, _args, _resolution) do
    {:ok, Repo.all Customer}
  end

  def create_customer(_parent, args, _resolution) do
    Customers.create args
  end
end