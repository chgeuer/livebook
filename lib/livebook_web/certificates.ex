defmodule LivebookWeb.Certificates do
  def cert_dir() do
    case :os.type() do
      {:unix, :linux} -> "/home/chgeuer"
      {:win32, :nt} -> "C:/Users/chgeuer/.lego/certificates"
    end
  end

  def sni_fun(host),
    do: [
      cert:
        host
        |> to_string
        |> (fn h -> "#{cert_dir()}/#{h}.crt" end).()
        |> File.read!()
        |> X509.Certificate.from_pem!()
        |> X509.Certificate.to_der(),
      key:
        host
        |> to_string
        |> (fn h -> "#{cert_dir()}/#{h}.key" end).()
        |> File.read!()
        |> X509.PrivateKey.from_pem!()
        |> X509.PrivateKey.to_der(wrap: true)
        |> (fn k -> {:PrivateKeyInfo, k} end).()
    ]
end
