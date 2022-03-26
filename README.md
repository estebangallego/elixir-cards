# Cards

**TODO: Provides methods for creating and handling a deck of cards**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `cards` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:cards, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/cards>.

## Personal notes

**Run Elixir**
- Iex -S mix
- recompile

**Dependencies**
*Folder to add them is located at: mix.exs*
mix deps.get
- Generates documentation {:ex_doc, "~> 0.27", only: :dev, runtime: false}
- Add comments to the Modules and functions
- @moduledoc 
- @doc for function documentation
- Run inside the doc folder: mix docs

*Testing*
Folder to write the test is located at: test
- Run mix test