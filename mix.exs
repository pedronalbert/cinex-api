defmodule Cinex.Mixfile do
  use Mix.Project

  def project do
    [
      app: :cinex,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {Cinex.Application, []},
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ecto, "~> 2.2.8", override: true},
      {:postgrex, "~> 0.13.0"},
      {:absinthe, "~> 1.4.2", override: true},
      {:absinthe_plug, "~> 1.4.2"},
      {:poison, "~> 2.2.0"},
      {:plug, "~> 1.4.3"},
      {:cowboy, "~> 1.1.0"},

      {:remix, "~> 0.0.1", only: :dev},
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
      {:credo, "~> 0.9.0-rc1", only: [:dev, :test], runtime: false},
      {:kronky, "~> 0.4.0"}
    ]
  end
end
