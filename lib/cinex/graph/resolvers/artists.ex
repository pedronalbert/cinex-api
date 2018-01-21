defmodule Cinex.Graph.Resolvers.Artists do
  @moduledoc """
    Artists resolver
  """
  alias Cinex.Repo
  alias Cinex.Repository.Entities.Artist
  alias Cinex.Repository.Artists

  def list(_parent, _args, _resolution) do
    {:ok, Repo.all Artist}
  end

  def create(_parent, args, _resolution) do
    Artists.create args
  end

  def delete(_parent, %{id: id}, _resolution) do
    Artists.delete id
  end

  def update(_parent, args, _resolution) do
    Artists.update args
  end
end