defmodule Cinex.Application do
  def start(_type, _args) do
    import Supervisor.Spec

    Supervisor.start_link(
      [supervisor(Cinex.Repo, [])],
      strategy: :one_for_one,
      name: Cinex.Supervisor
    )
  end
end