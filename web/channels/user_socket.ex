defmodule Chat.UserSocket do
  use Phoenix.Socket

  ## Channels
  #channel "room:*", Chat.RoomChannel

  ## Transports
  transport :websocket, Phoenix.Transports.WebSocket, timeout: :infinity
  transport :longpoll, Phoenix.Transports.LongPoll

  def connect(_params, socket) do
    {:ok, socket}
  end

  def id(_socket), do: nil
end
