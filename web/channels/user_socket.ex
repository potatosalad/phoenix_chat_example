defmodule Chat.UserSocket do
  use Phoenix.Socket

  channel "rooms:*", Chat.RoomChannel

  transport :longpoll, Phoenix.Transports.LongPoll

  def connect(_params, socket) do
    {:ok, socket}
  end

  def id(_socket), do: nil
end
