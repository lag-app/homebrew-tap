class Lag < Formula
  desc "Terminal client for Lag voice chat"
  homepage "https://trylag.com"
  version "0.0.6-alpha"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lag-app/cli/releases/download/v0.0.6-alpha/lag-0.0.6-alpha-darwin-aarch64.tar.gz"
      sha256 "f6c214aa1cd2f9071a48dc5811d87e3ef116977d23ebb9de393647a5b0b50b34"
    else
      url "https://github.com/lag-app/cli/releases/download/v0.0.6-alpha/lag-0.0.6-alpha-darwin-x86_64.tar.gz"
      sha256 "9b2f47c1f50def74823f09731d4c448cd768dda37fd3db2be4515d4133711e72"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lag-app/cli/releases/download/v0.0.6-alpha/lag-0.0.6-alpha-linux-arm64.tar.gz"
      sha256 "4daa24e35bc48fcc0f78bd75b233524a998194d287cc1e1f2e84fbdacbfdc8f7"
    else
      url "https://github.com/lag-app/cli/releases/download/v0.0.6-alpha/lag-0.0.6-alpha-linux-amd64.tar.gz"
      sha256 "e3741cd7d64cc11ce5ad262a170288410c9a04c10cb0608f37b5fbd8a9228a41"
    end
  end

  def install
    bin.install "lag"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lag --version")
  end
end
