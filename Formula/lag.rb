class Lag < Formula
  desc "Terminal client for Lag voice chat"
  homepage "https://trylag.com"
  version "0.0.7-alpha"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lag-app/cli/releases/download/v0.0.7-alpha/lag-0.0.7-alpha-darwin-aarch64.tar.gz"
      sha256 "5a6e1ae8ef775ffa7e62d6508255036581aa5a20b2d53c9900b64679b3dc55f8"
    else
      url "https://github.com/lag-app/cli/releases/download/v0.0.7-alpha/lag-0.0.7-alpha-darwin-x86_64.tar.gz"
      sha256 "7f37428dab96d2752cd1ca3cb99a7d3cd4949dd65cd5e44bdc08391cd36c0f18"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lag-app/cli/releases/download/v0.0.7-alpha/lag-0.0.7-alpha-linux-arm64.tar.gz"
      sha256 "7d71a956679aea831b268d2b7142d7e56ea2a7e1e1785223e0b9ae6f6e45cd3e"
    else
      url "https://github.com/lag-app/cli/releases/download/v0.0.7-alpha/lag-0.0.7-alpha-linux-amd64.tar.gz"
      sha256 "0474d42bd19c69410dc99bd72d871e568f40b2f899a94fcdab44d95480ea946e"
    end
  end

  def install
    bin.install "lag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lag --version")
  end
end
