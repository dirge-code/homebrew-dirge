class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.21.11"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.11/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "8ba0328860467a228ae50f904da366c15bf894e5f9d662d5e266561c7bdb9cd0"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.11/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "acf8a6dc4093513fe7c0c62b6c3d171ff455e9bec6ad35b7368fcd646b188911"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.11/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aa3b5f971dffb563d5bd67e0282249c80b3e42ece839b046e7b30a2024a302d7"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end
