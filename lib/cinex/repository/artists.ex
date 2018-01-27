defmodule Cinex.Repository.Artists do
  @moduledoc """
    Module for managing customers repository
  """

  alias Cinex.Repo
  alias Cinex.Repository.Entities.Artist

  def create(attrs) do
    %Artist{} |> Artist.changeset(attrs) |> Repo.insert()
  end

  def update(attrs) do
    %Artist{}
    |> Repo.get(attrs.id)
    |> Artist.changeset(attrs)
    |> Repo.update()
  end
end