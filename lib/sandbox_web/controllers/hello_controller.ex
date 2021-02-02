defmodule SandboxWeb.HelloController do
  use SandboxWeb, :controller

  def world(conn, %{"name" => name}) do
    render(conn, "world.html", name: name)
  end
end
