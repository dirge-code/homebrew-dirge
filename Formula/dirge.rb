class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.19.19"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.19/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "c86e0982e8098ea3baec2574e427f0ad4151838dc1d4733ac561fb29bb89a726"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.19/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "133f165050672d805aa1626ba5fc4803b34eb5470ac2d7e73bf77f9c15024226"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.19/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "511f341f81dd8511acab31bf85e523004f7ba8479c8eb91cfabda3c69f641a14"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end
