defmodule HelloScratch.Mixfile do
  use Mix.Project

  def project do
    [app: :hello_scratch,
     version: "0.1.0",
     elixir: "~> 1.4",
     compilers: [:phoenix] ++ Mix.compilers,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [applications: [:phoenix, :cowboy, :logger],
     mod: {HelloScratch, []}]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:phoenix, "~> 1.2.4"},
     {:cowboy, "~> 1.0"}]
  end
end
