defmodule QuantumPhoenix.Task do
  def work do
    File.write("/tmp/quantum_phoenix.txt", "#{Timex.now}", [:append])
  end
end
