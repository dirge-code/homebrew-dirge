class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.19.9"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.9/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "bd6a0813254f52026c2ddaabffb99889e48003535395d69f5e7be788054315c6"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.9/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "804831cce92013d70fa9c94aea10c6e3abd3b869db0bcb6cd67788bbf6393889"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.9/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "328f5195b957e7f358586b6a76ec0e371b39bc85df0e607995bbb47edf93dcd3"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end
