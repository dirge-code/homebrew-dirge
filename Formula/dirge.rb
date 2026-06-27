class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.13.4"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.13.4/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "c39419a462813ebb76bb9492b76449b58d577280ca60f6b9f3749cf7689d8581"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.13.4/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "80aea4825ef6267bb7702fcbc3975dda0928b0f9daff08495897764594b995c3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.13.4/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7263b9f051f5579878af01fad6905d567aa5a1f8cc98ff37e38569c46636bada"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end
