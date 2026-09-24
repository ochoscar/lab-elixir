defmodule GenServer.StackApp do
  use Application

  def start(_type, _args) do
    children = [
      {GenServer.StackStash, [100, 99, 98]},
      {GenServer.Stack, nil}
    ]

    opts = [strategy: :rest_for_one, name: GenServer.StackApp.Supervisor]
    Supervisor.start_link(children, opts)
  end

end
