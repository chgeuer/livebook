defmodule Mix.Tasks.LaunchBrowser do
  use Mix.Task

  def run(_) do
    System.cmd("/mnt/c/Windows/system32/cmd.exe", ["/C", "start https://beast.geuer-pollmann.de:#{LivebookWeb.Endpoint.access_struct_url.port}/?#{LivebookWeb.Endpoint.access_struct_url.query}"])
  end
end
