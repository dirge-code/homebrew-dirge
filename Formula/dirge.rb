class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.19.2"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.2/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "093fc65e50c3c5576561f1ad1d5d524eeeab3bdb68da19bb7f0354cb4a304299"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.2/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "024e9d1dcd396f301fa7fab0ea44618f3ae902098e244b4d9779d0cf25d6e277"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.2/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "52fba5d20a813a2c398ba62686587e5f15ba1072b9259698db339257eece1ea9"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end
