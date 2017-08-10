defmodule HelloScratch.Router do
  use Phoenix.Router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", HelloScratch do
    pipe_through :api

    get "/", PageController, :hello
  end
end

defmodule HelloScratch.PageController do
  use Phoenix.Controller

  def hello(conn, _params) do
    render(conn, :index, layout: {HelloScratch.PageView, :index})
  end
end

defmodule HelloScratch.PageView do
  use Phoenix.View, root: "hello_scratch"

  def render("index.json", _assigns) do
    "Hello World!"
  end

  def render("404.json", _assigns) do
    "Hello World!"
  end

end