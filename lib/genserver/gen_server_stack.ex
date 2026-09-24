defmodule GenServer.Stack do
  use GenServer

  @me __MODULE__

  # Interface implementation

  def start_link(init_stack) do
    GenServer.start_link(__MODULE__, init_stack, name: @me)
  end

  def pop() do
    GenServer.call(@me, :pop)
  end

  def push(item) do
    GenServer.cast(@me, {:push, item})
  end

  # Server implementation

  def init(init_state) do
    #{:ok, init_state}
    {:ok, GenServer.StackStash.get() }
  end

  def handle_call(:pop, _from, current_state) do
    [head | tail] = current_state
    {:reply, head, tail}
  end

  def handle_cast({:push, item}, current_state) do
    {:noreply, [item | current_state]}
  end

  def terminate(_reason, current_state) do
    GenServer.StackStash.update(current_state)
  end

end

# Test in iex.bat
#init_stack = [100, 99, 98]
#{:ok, pid} = GenServer.start_link(GenServer.Stack, init_stack)
#GenServer.call(pid, :pop)
#GenServer.cast(pid, {:push, 101})
