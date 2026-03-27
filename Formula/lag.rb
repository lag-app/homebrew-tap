class Lag < Formula
  desc "Terminal client for Lag voice chat"
  homepage "https://trylag.com"
  version "0.9.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lag-app/cli/releases/download/v0.9.1/lag-0.9.1-darwin-aarch64.tar.gz"
      sha256 "51e509cd49ed4e08b544ec2516ad6597ed3572b8dada06ba3d204643219d5443"
    else
      url "https://github.com/lag-app/cli/releases/download/v0.9.1/lag-0.9.1-darwin-x86_64.tar.gz"
      sha256 "84d0150885f3b9531471a74b91d25b25e0f79a0645c8818c48feb6866b21b6ce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lag-app/cli/releases/download/v0.9.1/lag-0.9.1-linux-arm64.tar.gz"
      sha256 "964754737ee4c8b1ff0c84084ce39def69f1909501dfded99ce598d1777e6195"
    else
      url "https://github.com/lag-app/cli/releases/download/v0.9.1/lag-0.9.1-linux-amd64.tar.gz"
      sha256 "28f8727396cd14fc729448d44c89e40bdb2536cc9400156b678388f5f3923e9b"
    end
  end

  def install
    bin.install "lag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lag --version")
  end
end
