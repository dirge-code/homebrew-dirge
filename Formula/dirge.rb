class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.19.25"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.25/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "a8103827649669ab0536ef34196a70745b002c97fae7fdceabaee009cab4929e"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.25/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "61fdbbb4c79abca7066034212932005065810ac386c7619630abe53981374bd8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.25/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0d2ccf1e9d817c3af34a723d665a3551d63f9cdb0d2a7fec804aacc42b92fae5"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end
