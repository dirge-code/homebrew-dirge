class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.11.1"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.11.1/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "a9249858e4cae179e7a4c1786ee56727a9679c10a6c46ce8c27de0d22eabfd64"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.11.1/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "f4ece10d0c3a01878be743ad48971db1233041751073a4de1950790adea4c39e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.11.1/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "16c16916c9bd4578663078303453d82e039e1ad8a380fa30ae93d4c5026f8e7f"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end
