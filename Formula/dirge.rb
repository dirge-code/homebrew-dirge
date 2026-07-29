class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.19.28"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.28/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "d6592b9ef5a23256d0afa8cf4964c3c507b25c8f0fcd8d96d11f58de3f42676c"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.28/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "c7e39ee333634d97d2651db03b02dd66d4fc919b3b4f40cc81c59ab1ee0e02fc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.28/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0d951806266bc3fd8b5fd226dff91442aa3f0f165c4929af087503236ae61fb1"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end
