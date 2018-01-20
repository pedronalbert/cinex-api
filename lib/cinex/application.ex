defmodule Cinex.Application do
  def start(_type, _args) do
    import Supervisor.Spec
    require Logger

    Supervisor.start_link(
      [
        supervisor(Cinex.Repo, []),
        Plug.Adapters.Cowboy.child_spec(:http, Cinex.Router, [], [port: 1337])
      ],
      strategy: :one_for_one,
      name: Cinex.Supervisor
    )
  end
end