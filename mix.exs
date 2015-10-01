defmodule Exjprop.Mixfile do
  use Mix.Project

  def project do
    [app: :exjprop,
     version: "0.0.2",
     elixir: "~> 1.0",
     name: "exjprop",
     source_url: "https://github.com/stocks29/exjprop",
     homepage_url: "https://github.com/stocks29/exjprop",
     description: description,
     package: package,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger, :ex_aws, :sweet_xml, :httpoison]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://gthub.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      {:ex_aws, "~> 0.4.10"},
      {:sweet_xml, "~> 0.2.1"},
      {:httpoison, "~> 0.7.3"},
      {:earmark, "~> 0.1", only: :dev},
      {:ex_doc, "~> 0.7", only: :dev},
    ]
  end

  defp description do
    """
    Elixir library for reading Java properties files from various sources
    """
  end

  def package do
    [ contributors: ["Bob Stockdale"],
      licenses: ["MIT License"],
      links: %{
        "GitHub" => "https://github.com/stocks29/exjprop.git",
        "Docs" => "http://hexdocs.pm/exjprop"
        }]
  end
end
