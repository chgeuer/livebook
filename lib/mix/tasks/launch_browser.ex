defmodule Mix.Tasks.LaunchBrowser do
  use Mix.Task

  def run(_) do
    url = "https://beast.geuer-pollmann.de:#{LivebookWeb.Endpoint.access_struct_url.port}/?#{LivebookWeb.Endpoint.access_struct_url.query}"
    IO.puts("Opening browser at: #{url}")
    System.cmd("/mnt/c/Windows/system32/cmd.exe", ["/C", "start #{url}"])
  end
end
