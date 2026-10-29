class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.26.1"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.26.1/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "2ebe89efb8138ed695f35059fd8d5e5198dd37124dcccd278bc962b02ab9bd93"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.26.1/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "05b7dfdefcb2e31cf32bc2885dd7006fb429ae8b04e93250064b44691fe095a9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.26.1/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "17abfaa86539c1dd3e19b910463561c5acc9871fa6b9ea626122c7bb0bb9783e"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end
