defmodule AlpacaExampleTest do
  use ExUnit.Case
  import ExUnit.CaptureIO
  doctest AlpacaExample

  test "simple add" do
    assert 3 == :alpaca_example.add(1, 2)
  end

  test "generic ADT div" do
    assert :Nothing == :alpaca_example.div(1, 0)
    assert {:Just, 5} == :alpaca_example.div(10, 2)
  end

  test "IO FFI" do
    greetings = "Hello Elixir! Love, Alpaca"

    assert capture_io(fn ->
             assert {} == :alpaca_example.io_ffi(greetings)
           end) == "#{greetings}\n"
  end
end
