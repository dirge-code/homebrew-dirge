class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.5.1"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.5.1/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "bfd1d1fe3d70d38f220658be0825391221f1b6324f1fe6507d5954e08abf9a65"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.5.1/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "287c08ce372226b16035c3dbdfcfad30017c1aff52b5adfcd13e4e13cd382f10"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.5.1/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b075dc1626da02ef483bf6f98ca5164a8ea68ec6e013695589c20665499e3296"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end
