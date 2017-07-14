defmodule HelloScratch do
  # See http://elixir-lang.org/docs/stable/elixir/Application.html
  use Application

  def start(_type, _args) do
    import Supervisor.Spec

    children = [
      supervisor(HelloScratch.Endpoint, [])
    ]

    opts = [strategy: :one_for_one, name: HelloScratch.Supervisor]
    Supervisor.start_link(children, opts)
  end
end


defmodule HelloScratch.Endpoint do
  use Phoenix.Endpoint, otp_app: :hello_scratch

  plug HelloScratch.Router
end
