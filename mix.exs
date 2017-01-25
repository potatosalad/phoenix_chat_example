defmodule Chat.Mixfile do
  use Mix.Project

  def project do
    [app: :chat,
     version: "0.0.1",
     elixir: "~> 1.0",
     elixirc_paths: ["lib", "web"],
     compilers: [:phoenix] ++ Mix.compilers(),
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [mod: {Chat, []},
     applications: [:phoenix, :phoenix_pubsub, :phoenix_html, :phoenix_chatterbox, :logger, :gettext, :ranch, :chatterbox]]
  end

  # Specifies your project dependencies
  #
  # Type `mix help deps` for examples and options
  defp deps do
    [{:phoenix, "~> 1.2.1"},
     {:phoenix_pubsub, "~> 1.0"},
     {:phoenix_html, "~> 2.6"},
     {:phoenix_live_reload, "~> 1.0", only: :dev},
     {:phoenix_chatterbox, github: "potatosalad/phoenix_chatterbox"},
     {:ranch, github: "ninenines/ranch", ref: "1.3.0", override: true},
     {:gettext, "~> 0.11"},
     {:lager_logger, "~> 1.0.3"}]
  end
end
