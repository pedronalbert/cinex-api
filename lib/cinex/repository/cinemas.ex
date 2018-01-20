defmodule Cinex.Repository.Cinemas do
  alias Cinex.Repo
  alias __MODULE__.Cinema

  def all() do
    { :ok, Cinema |> Repo.all }
  end

  def create(attrs) do
    %Cinema{} |> Cinema.changeset(attrs) |> Repo.insert()
  end

  def delete(id) do
    case Cinema |> Repo.get(id) |> Repo.delete() do
      _ -> {:ok, "Deleted"}
    end
  end

  def update(attrs) do
    changeset = Cinema
    |> Repo.get(attrs.id)
    |> Cinema.changeset(attrs)

    Repo.update(changeset)
  end
end