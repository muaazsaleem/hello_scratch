use Mix.Config

# Configures the endpoint
config :hello_scratch, HelloScratch.Endpoint,
  url: [host: "localhost"],
  http: [port: 4000],
  render_errors: [view: HelloScratch.PageView, accepts: ~w(json)]
