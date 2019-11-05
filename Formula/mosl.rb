class Mosl < Formula
  desc "Bash script to audit and fix macOS Mojave (10.14.x) security settings"
  homepage "https://github.com/0xmachos/mOSL"
  url "https://github.com/0xmachos/mOSL/archive/v3.0.0.tar.gz"
  sha256 "77554c269147ef7677d5e4e5cecb3ca06fd53df9743e52a0b4d00d3f69670c1a"

  depends_on "minisign"

  def install
    bin.install "Lockdown"
    prefix.install "Lockdown.minisig"
  end

  test do
    "#{bin}/Lockdown" "debug"
  end
end
