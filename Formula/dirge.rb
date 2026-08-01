class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.21.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.0/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "b7d8ffa19bed6af5386a0c853ebf8b210192c1aed5d527ac20c1b75e18c52bfc"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.0/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "2e16d3994598891d1ee541e510b04dff6327a46e728274ded8131da6581c38c2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.0/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "deecd9a0cbd8bbf9a5366a349029fd5c821aef9ba1b4b4d465677f53406f7417"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end
