defmodule Chat.PageController do
  use Chat.Web, :controller

  def index(conn, params) do
    websocket = Map.get(params, "longpoll", :websocket)
    render conn, "index.html", websocket: websocket
  end
end
