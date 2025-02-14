defmodule PhoenixPubsubRedis.Mixfile do
  use Mix.Project

  @version "3.0.2"
  @source_url "https://github.com/primait/phoenix_pubsub_redis"

  def project do
    [
      app: :phoenix_pubsub_redis,
      version: @version,
      elixir: "~> 1.6",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      package: package(),
      deps: deps(),
      description: "A fork of the Redis PubSub adapter for the Phoenix framework",
      docs: docs()
    ]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    [
      phoenix_pubsub(),
      {:redix, "~> 0.10.0 or ~> 1.0"},
      {:ex_doc, ">= 0.0.0", only: :docs},
      {:poolboy, "~> 1.5.1 or ~> 1.6"}
    ]
  end

  defp phoenix_pubsub do
    if path = System.get_env("PUBSUB_PATH") do
      {:phoenix_pubsub, "~> 2.0", path: path}
    else
      {:phoenix_pubsub, "~> 2.0"}
    end
  end

  defp package do
    [
      organization: "prima",
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => @source_url}
    ]
  end

  defp docs do
    [
      main: "readme",
      source_ref: @version,
      source_url: @source_url,
      extras: ["README.md"]
    ]
  end
end
