class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.20.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.20.0/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "d35066f7f5a7dc5950f401f89e9410ca1c417a778c1ea8f0c6e67b8dffb66e1c"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.20.0/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "f89e9dbfcd41bff9ec34c5c7442144a52ef298fc384122d660406ed5c29cf44e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.20.0/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3a0dfcb79389901ae324a83d6c15dc2da6260fda9bc0656ebaa373707abcbb88"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end
