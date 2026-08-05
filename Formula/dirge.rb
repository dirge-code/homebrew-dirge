class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.21.7"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.7/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "2976034a50de390712de0a12b4c1e03bd36c08cecce6860079f85d80e0ca49c8"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.7/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "24fd39d26861a08142ffc378ce92b370b22c10e277ac0b446afc97dcde3f0f8e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.21.7/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9f679da9ff345b40f3668c5e6213bf3073b3e8ef36f1ec4c7af8eba75ae5453a"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end
