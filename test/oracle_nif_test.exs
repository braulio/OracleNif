defmodule OracleNifTest do
  use ExUnit.Case
  doctest OracleNif

  test "Soma 1 + 3" do
    assert OracleNif.somar(1, 2) == 3
  end
end
