class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.24.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.24.0/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "df17ce01ef667e625d944e93c612696d4b469ab30d441f3e671dd2afbf0d03ac"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.24.0/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "fbebfbe9172bfa073a483cd1fe5265b7672f4988914067cf773ff539d400a366"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.24.0/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7f110f1881c7d3c78322a8d7bd9fadcb91d2e0fe3774b5dafe2756c140420664"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end
