defmodule Cinex.Repository.Cinemas do
  alias Cinex.Repo
  alias Cinex.Repository.Entities.Cinema

  def create(attrs) do
    %Cinema{} |> Cinema.changeset(attrs) |> Repo.insert()
  end

  def update(attrs) do
    %Cinema{}
    |> Repo.get(attrs.id)
    |> Cinema.changeset(attrs)
    |> Repo.update()
  end
end