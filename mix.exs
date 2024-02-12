unless Kernel.function_exported?(CoMix, :version, 0) do
  {:ok, _} = Application.ensure_all_started(:hex)
  if path = System.get_env("CO_MIX_PATH") do
    Mix.install([{:co_mix, path: path, runtime: false}])
  else
    Mix.install([{:co_mix, "~> 1.0", runtime: false}])
  end
end

defmodule CoMixExample.MixProject do
  use Mix.Project

  def project do
    [
      app: :co_mix_example,
      version: CoMix.version(),
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
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
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:pay_day_loan, "~> 0.8.2"}
    ]
  end
end
