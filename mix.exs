defmodule Chat.Mixfile do
  use Mix.Project

  def project do
    [app: :chat,
     version: "0.0.1",
     elixir: "~> 1.0",
     elixirc_paths: ["lib", "web"],
     compilers: [:phoenix] ++ Mix.compilers,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [mod: {Chat, []},
     applications: [:phoenix, :phoenix_html, :plug_cowboy2, :phoenix_cowboy2, :logger, :ranch, :cowlib, :cowboy, :postgrex]]
  end

  # Specifies your project dependencies
  #
  # Type `mix help deps` for examples and options
  defp deps do
    [{:phoenix, "~> 1.2"},
     {:phoenix_html, "~> 2.5"},
     {:phoenix_live_reload, "~> 1.0", only: :dev},
     {:plug_cowboy2, github: "voicelayer/plug_cowboy2", ref: "temp/skip-sendfile", override: true},
     {:phoenix_cowboy2, github: "voicelayer/phoenix_cowboy2"},
     {:ranch, github: "ninenines/ranch", ref: "1.3.0", override: true},
     {:cowlib, github: "ninenines/cowlib", ref: "master", override: true},
     {:cowboy, github: "ninenines/cowboy", ref: "2.0.0-pre.4", override: true},
     {:postgrex, "~> 0.12.1"}]
  end
end
