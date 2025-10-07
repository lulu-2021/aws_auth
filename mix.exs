defmodule AWSAuth.Mixfile do
  use Mix.Project

  def project do
    [app: :aws_auth,
     version: "0.8.1",
     elixir: "~> 1.18.4",
     description: description(),
     package: package(),
     deps: deps(),
     preferred_cli_env: [coveralls: :test]
    ]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [
      {:earmark, "~> 1.4.48", only: :dev },
      {:ex_doc, "~> 0.16", only: :dev },
      {:credo, "~> 1.7.12", only: [:dev, :test]}
    ]
  end

  defp description do
    """
    AWS Signature Version 4 Signing Library
    """
  end

  defp package do
    [
     files: ["lib", "mix.exs", "README*"],
     maintainers: ["Bryan Joseph"],
     licenses: ["Apache 2.0"],
     links: %{"GitHub" => "https://github.com/bryanjos/aws_auth"}
    ]
  end
end
