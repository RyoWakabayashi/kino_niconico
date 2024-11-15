defmodule KinoNiconico.MixProject do
  use Mix.Project

  def project do
    [
      app: :kino_niconico,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: "A simple Kino for playing Niconico videos on Livebook.",
      source_url: "https://github.com/RyoWakabayashi/kino_niconico",
      homepage_url: "https://github.com/RyoWakabayashi/kino_niconico",
      package: package()
    ]
  end

  defp package do
    [
      maintainers: ["Ryo Wakabayashi"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/RyoWakabayashi/kino_niconico"}
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
      {:kino, "~> 0.12"},
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false},
      {:credo, "~> 1.7", only: [:dev, :test], runtime: false}
    ]
  end
end
