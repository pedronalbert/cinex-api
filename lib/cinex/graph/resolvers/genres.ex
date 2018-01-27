defmodule Cinex.Graph.Resolvers.Genres do
  alias Cinex.Repo
  alias Cinex.Repository.{Entities.Genre, Genres}

  def list(_parent, _args, _resolution) do
    {:ok, Repo.all Genre}
  end

  def create(_parent, args, _resolution) do
    Genres.create args
  end

  def update(_pareng, args, _resolution) do
    Genres.update args
  end
end