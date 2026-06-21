class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.10.3"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.10.3/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "a17bcf5a308c2bc803df1b349a2cf9b9e4a7ffc79d4c011a2f4039ac7ac0869f"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.10.3/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "e58f78adb9f4ae6818948ca4611dc6d3db7d31814be57eeadcc269c04315bd53"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.10.3/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "86d7e15462beab7a204e020e789fd3d783a34bc0b9165985fbc5035b17ae0bb6"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end
