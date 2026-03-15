class Lag < Formula
  desc "Terminal client for Lag voice chat"
  homepage "https://trylag.com"
  version "0.0.6-alpha"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lag-app/cli/releases/download/v0.0.6-alpha/lag-0.0.6-alpha-darwin-aarch64.tar.gz"
      sha256 "d71975614878a42f015135b820fedf0986ff30e6599acdb36d6c8ad19c540d54"
    else
      url "https://github.com/lag-app/cli/releases/download/v0.0.6-alpha/lag-0.0.6-alpha-darwin-x86_64.tar.gz"
      sha256 "0aca6fa6320131982150d75feaaa32631297070ad3102d804f03a08726b5d4fd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lag-app/cli/releases/download/v0.0.6-alpha/lag-0.0.6-alpha-linux-arm64.tar.gz"
      sha256 "956b09fafb6689b99903c29222e947e6147170a7b73348125b472eda2352c25a"
    else
      url "https://github.com/lag-app/cli/releases/download/v0.0.6-alpha/lag-0.0.6-alpha-linux-amd64.tar.gz"
      sha256 "ad1730b10060b1f66ceace066cf2f73c37d0d7eb7db2e0f9f92b43ce38802569"
    end
  end

  def install
    bin.install "lag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lag --version")
  end
end
