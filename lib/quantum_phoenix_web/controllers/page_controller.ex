defmodule QuantumPhoenixWeb.PageController do
  use QuantumPhoenixWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
