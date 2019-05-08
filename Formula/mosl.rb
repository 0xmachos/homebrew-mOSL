class Mosl < Formula
  desc "Bash script to audit and fix macOS Mojave (10.14.x) security settings"
  homepage "https://github.com/0xmachos/mOSL"
  url "https://github.com/0xmachos/mOSL/archive/v2.4.0.tar.gz"
  sha256 "6cf2f301844085f36aa131867a4cc11d7d11a3b04b25c5d3ea35f71c39296eef"

  depends_on "minisign"

  def install
    bin.install "Lockdown"
    prefix.install "Lockdown.minisig"
  end

  test do
    Lockdown debug
  end
end

