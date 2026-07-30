defmodule FilesExamples do
  @moduledoc false

  # First operation
  IO.puts(Path.join("foo", "bar"))

  #{:ok, file} = File.read("newfile", [:write])
  # Pattern matching to store returned stream
  #IO.binwrite(file, "This will be written to the file")

  # WRITE

  #Open the file in read, write and utf8 modes.
  {:ok, file} = File.open("newfile.txt", [:read, :utf8, :write])
  #Write to this "io_device" using standard IO functions
  IO.puts(file, "Random text 123")
  File.close(file)


  # READ
  {:ok, content} = File.read("newfile.txt")
  IO.puts(content)
  #File.close(file)
end
