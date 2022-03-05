defmodule Mix.Tasks.Compille do
  def run(_) do

      IO.warn("Linux compilation...")
      File.mkdir_p("priv")
      {result, _error_code} = System.cmd("make", [], stderr_to_stdout: true)
      IO.binwrite result

    :ok
  end
end



defmodule OracleNif.Mixfile do
  use Mix.Project

  def project do
    [
      app: :oracle_nif,
      version: "0.1.0",
      elixir: "~> 1.12",
      elixirc_paths: elixirc_paths(Mix.env),
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end
  defp elixirc_paths(:test), do: ["lib", "priv", "test/support"]
  defp elixirc_paths(:dev), do: ["lib", "priv", "test/support"]
  defp elixirc_paths(_),     do: ["lib"]

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
    ]
  end
end
