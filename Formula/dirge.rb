class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.25.5"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.25.5/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "4aab8c8469c2dfa512839d8ffe0006c860cd5d351254e0f0a984999cdce23729"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.25.5/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "96cdd411c042d2cb10bdc565af8e4e2efcb7ee12fa56d7744b832fa3cbde824c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.25.5/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "08f5ec869c42fa432c73291821b8bca084fa755c0c236d9f04855b4bb64aa736"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end
