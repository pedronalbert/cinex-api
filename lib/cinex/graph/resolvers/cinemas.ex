defmodule Cinex.Graph.Resolvers.Cinemas do
  @moduledoc """
    Cinemas resolver
  """
  require Logger

  alias Cinex.Repository.Cinemas

  def list(_parent, _args, _resolution) do
    Cinemas.all
  end

  def create(_parent, args, _resolution) do
    Cinemas.create(args)
  end

  def delete(_parent, args, _resolution) do
    Cinemas.delete args.id
  end

  def update(_parent, args, _resolution) do
    Cinemas.update args
  end
end