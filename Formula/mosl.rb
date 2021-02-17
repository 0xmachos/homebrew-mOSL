class Mosl < Formula
  desc "Bash script to audit and fix macOS Catalina (10.15.x) security settings"
  homepage "https://github.com/0xmachos/mOSL"
  url "https://github.com/0xmachos/mOSL/archive/v3.2.1.tar.gz"
  sha256 "a1662d0daba2c074fb917aee919bf6adf7bc7bfa33a6188013fc6fb6305cfa1e"

  depends_on "minisign"

  def install
    bin.install "Lockdown"
    prefix.install "Lockdown.minisig"
  end

  test do
    "#{bin}/Lockdown" "debug"
  end
end
