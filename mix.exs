defmodule ExMpesa.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex_mpesa,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      description:
        "Payment Library For Most Mpesa(Daraja) Payment API's in Kenya. Let us get this",
      package: package(),
      deps: deps(),
      name: "ExMpesa",
      source_url: "https://github.com/beamkenya/ex_mpesa.git",
      docs: [
        # The main page in the docs
        main: "readme",
        canonical: "http://hexdocs.pm/at_ex",
        source_url: "https://github.com/beamkenya/ex_mpesa.git",
        logo: "assets/mpesa.png",
        assets: "assets",
        extras: ["README.md", "contributing.md"]
      ],
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test
      ]
    ]
  end

  defp package do
    [
      name: "ex_mpesa",
      maintainers: [
        "Paul Oguda, Magak Emmanuel, Tracey Onim, Anthony Leiro, Frank Midigo, Evans Okoth "
      ],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/beamkenya/ex_mpesa.git",
        "README" => "https://hexdocs.pm/ex_mpesa/readme.html"
      },
      homepage_url: "https://github.com/beamkenya/ex_mpesa.git"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {ExMpesa.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:tesla, "~> 1.3.0"},
      {:hackney, "~> 1.16.0"},
      {:jason, ">= 1.0.0"},
      {:ex_doc, "~> 0.21", only: :dev, runtime: false},
      {:excoveralls, "~> 0.10", only: :test}
    ]
  end
end
