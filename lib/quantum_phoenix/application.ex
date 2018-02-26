defmodule QuantumPhoenix.Application do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec

    children = [
      supervisor(QuantumPhoenix.Repo, []),
      supervisor(QuantumPhoenixWeb.Endpoint, []),
      worker(QuantumPhoenix.Scheduler, []),
    ]

    opts = [strategy: :one_for_one, name: QuantumPhoenix.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def config_change(changed, _new, removed) do
    QuantumPhoenixWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
