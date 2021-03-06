defmodule RandomSimpsons.MixProject do
  use Mix.Project

  def project do
    [
      app: :random_simpsons,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      escript: escript()
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
      {:poison, "~> 3.1"}
    ]
  end

  def escript do
    [main_module: RandomSimpsons.Main]
  end
end
