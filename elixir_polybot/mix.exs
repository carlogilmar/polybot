defmodule Polybot.MixProject do
  use Mix.Project

  def project do
    [
      app: :polybot,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:httpoison, "~> 1.0", override: true},
      {:poison, "~> 3.1"}
    ]
  end
end
