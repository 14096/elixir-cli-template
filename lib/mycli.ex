defmodule MyCLI do
  def main(args) do
    start_time =
      :timer.tc(fn ->
        Utils.clear()
        Utils.print_header()

        case args do
          ["hello", name] ->
            Hello.run(name)

          _ ->
            raise InvalidCommandError
        end
      end)

    {elapsed, _result} = start_time
    Utils.print_elapsed(elapsed)
  end
end
