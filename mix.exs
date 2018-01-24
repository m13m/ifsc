defmodule IFSC.Mixfile do
  use Mix.Project

  def project do
    [
      app: :ifsc,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      source_url: "https://github.com/razorpay/ifsc/tree/master/src/elixir",
      homepage_url: "https://ifsc.razorpay.com/",
      elixirc_paths: ["src/elixir"],
    ]
  end

  def application do
    [
      extra_applications: [:logger],
    ]
  end

  defp description do
    "A simple package by @razorpay to help you validate your IFSC codes. "
    <> "IFSC codes are bank codes within India"
  end

  defp package do
    [
      maintainers: [
        "Nihal Gonsalves <nihal@gonsalves.com>",
        "Abhay Rana <contact@razorpay.com>",
      ],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/razorpay/ifsc",
        "Website" => "https://ifsc.razorpay.com/",
      },
      files: files(),
    ]
  end

  defp files do
    [
      "src/elixir/config/**",
      "src/elixir/lib/**",
      "src/elixir/test/**",
      "src/*.json",
      "*.md",
    ]
  end

  defp deps do
    [
      {:poison, "~> 3.1"},
      {:httpoison, "~> 1.0"},
      {:memoize, "~> 1.2"},
    ]
  end
end