defmodule Chat do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec

    children = [
      supervisor(Chat.Endpoint, []),
      # @todo Chat.RoomSupervisor
    ]

    opts = [strategy: :one_for_one, name: Chat.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def config_change(changed, _new, removed) do
    Chat.Endpoint.config_change(changed, removed)
    :ok
  end
end
