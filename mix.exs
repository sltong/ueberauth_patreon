defmodule UeberauthPatreon.MixProject do
  use Mix.Project

  @source_url "https://github.com/sltong/ueberauth_patreon"
  @version "0.1.0"

  def project do
    [
      app: :ueberauth_patreon,
      name: "Ueberauth Patreon",
      description: description(),
      version: @version,
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      source_url: @source_url,
      homepage_url: @source_url,
      deps: deps(),
      docs: docs(),
      package: package()
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
      {:oauth2, "~> 2.0"},
      {:ueberauth, "~> 0.7"},
      {:ex_doc, "~> 0.27", only: :dev, runtime: false}
    ]
  end

  defp description do
    "Patreon OAuth2 strategy for Überauth."
  end

  defp docs do
    [
      extras: [
        "README.md",
        "CHANGELOG.md"
      ]
    ]
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md", "LICENSE", "CHANGELOG.md"],
      maintainers: ["Lao Tong"],
      licenses: ["BSD-3-Clause"],
      links: %{"GitHub" => @source_url}
    ]
  end
end
