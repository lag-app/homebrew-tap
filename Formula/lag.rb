class Lag < Formula
  desc "Terminal client for Lag voice chat"
  homepage "https://trylag.com"
  version "0.0.6-alpha"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lag-app/cli/releases/download/v0.0.6-alpha/lag-0.0.6-alpha-darwin-aarch64.tar.gz"
      sha256 "157b3c6d30ffd0892330af8e300c70667dc79b0dc8519935d3a8ebb4be1a01e6"
    else
      url "https://github.com/lag-app/cli/releases/download/v0.0.6-alpha/lag-0.0.6-alpha-darwin-x86_64.tar.gz"
      sha256 "5425b22542bb9a3f55a4ab8b630cfc6e3e46843c7f088872889b5f588adc5ef5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lag-app/cli/releases/download/v0.0.6-alpha/lag-0.0.6-alpha-linux-arm64.tar.gz"
      sha256 "db2e1b2389d7b92083a532f1d6b95e1d0dd638b8649f36792ae992ec63bfaf45"
    else
      url "https://github.com/lag-app/cli/releases/download/v0.0.6-alpha/lag-0.0.6-alpha-linux-amd64.tar.gz"
      sha256 "1683c0303d3e63bea5373b05d73b390b77dafa7ab95257d83f79a5f78136a2b8"
    end
  end

  def install
    bin.install "lag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lag --version")
  end
end
