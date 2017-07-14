defmodule HelloScratch.Router do
  use Phoenix.Router

  pipeline :browser do
    plug :accepts, ["html"]
  end

  scope "/", HelloScratch do
    pipe_through :browser

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

  def render("index.html", _assigns) do
    "Hello World!"
  end

end