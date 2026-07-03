# Elixir Lab

A personal playground for learning and experimenting with the Elixir programming language. This repository contains small examples, algorithms, language features, and experiments to better understand the Elixir ecosystem.

## Requirements

- Elixir
- Erlang/OTP

Verify your installation:

```powershell
elixir --version
```

## Running a File

To execute a standalone `.exs` script:

```powershell
elixir .\lib\<folder>\<file>.exs
```

Example:

```powershell
elixir .\lib\hello_world.exs
```

## Loading a Module Without Executing It

If a file only defines one or more modules, you can load it using:

```powershell
elixir -r .\lib\<folder>\<file>.ex
```

This compiles and loads the module into the current Elixir session but does not invoke any functions.

## Executing a Function Inside a Module

To execute a specific function from a module without creating a separate script:

```powershell
elixir -r .\lib\<folder>\<file>.ex -e "ModuleName.function_name()"
```

## Interactive Shell

Start an interactive Elixir shell:

```powershell
iex.bat
or
iex
```

Or preload a module:

```powershell
iex -r .\lib\<folder>\<file>.ex
```

Then call functions interactively:

```elixir
ModuleName.function_name()
```

## Purpose

This repository is intended for:

- Learning Elixir syntax and idioms
- Exploring functional programming concepts
- Implementing algorithms and data structures
- Experimenting with concurrency and OTP
- Keeping small, self-contained examples for future reference