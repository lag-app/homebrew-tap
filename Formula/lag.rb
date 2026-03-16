class Lag < Formula
  desc "Terminal client for Lag voice chat"
  homepage "https://trylag.com"
  version "0.0.8-alpha"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lag-app/cli/releases/download/v0.0.8-alpha/lag-0.0.8-alpha-darwin-aarch64.tar.gz"
      sha256 "7b3122a2f11060bed3468e24fe95749cb4750fecfbfc05953cd265943ca4d306"
    else
      url "https://github.com/lag-app/cli/releases/download/v0.0.8-alpha/lag-0.0.8-alpha-darwin-x86_64.tar.gz"
      sha256 "d745209005ac52803ffb0b5cbf49f9cb132b6b5cc292fc93d745b2bf97332f53"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lag-app/cli/releases/download/v0.0.8-alpha/lag-0.0.8-alpha-linux-arm64.tar.gz"
      sha256 "634311f1caa98b46ecf4f388a996223de134c6ba46bcb2e3dc64c36bb8203e59"
    else
      url "https://github.com/lag-app/cli/releases/download/v0.0.8-alpha/lag-0.0.8-alpha-linux-amd64.tar.gz"
      sha256 "938159f8a0d1ccf16fbbbeb11fda5e69f6af07a7cd1dd2c01ee0fb80afd2d44d"
    end
  end

  def install
    bin.install "lag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lag --version")
  end
end
