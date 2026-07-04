class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.18.1"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.18.1/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "d331855f1fe56070f91734503675607999f1ebfd02b32793cc88a7c8a44be730"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.18.1/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "62062c13ef5a89f75e14d36f62cdc4f9a202465a557373d46b1ab8060fc3a032"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.18.1/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9c28f3431d5b3a777e8040f8b3ec6305463430a578f13e4c7e5c3e5bfdceebc6"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end
