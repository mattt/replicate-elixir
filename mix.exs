defmodule Replicate.MixProject do
  use Mix.Project

  def project do
    [
      app: :replicate,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package(),
      deps: deps(),
      name: "Replicate",
      source_url: "https://github.com/cbh123/replicate-elixir"
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
      {:httpoison, "~> 1.8"},
      {:jason, "~> 1.2"},
      {:mox, "~> 1.0", only: :test}
    ]
  end

  defp description() do
    "The official Elixir client for Replicate. It lets you run models from your Elixir code, and everything else you can do with Replicate's HTTP API."
  end

  defp package() do
    [
      # These are the default files included in the package
      files: ~w(lib .formatter.exs mix.exs README* CHANGELOG*),
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => "https://github.com/cbh123/replicate-elixir"}
    ]
  end
end