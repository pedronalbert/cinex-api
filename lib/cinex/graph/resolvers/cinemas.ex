defmodule Cinex.Graph.Resolvers.Cinemas do
  @moduledoc """
    Cinemas resolver
  """
  require Logger

  alias Cinex.Repo
  alias Cinex.Repository.Entities.Cinema
  alias Cinex.Repository.Cinemas

  def list(_parent, _args, _resolution) do
    {:ok, Repo.all Cinema}
  end

  def create(_parent, args, _resolution) do
    Cinemas.create args
  end

  def delete(_parent, %{id: id}, _resolution) do
    Cinemas.delete id
  end

  def update(_parent, args, _resolution) do
    Cinemas.update args
  end
end