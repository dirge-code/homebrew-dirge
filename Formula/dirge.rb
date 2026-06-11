class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.5.2"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.5.2/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "cbc96405acab4c58f6083264cfd865507f793461eacad9c10f7282dcf34dbbda"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.5.2/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "16e524420c0c7b628ead72179fd3f991d366ae39449d7727fd14f21e8034a5a0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.5.2/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9824d0ccc7faa4509ecd4f2cfae6489a3b0c4f02e443bf9352d0f679011c6d48"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end
