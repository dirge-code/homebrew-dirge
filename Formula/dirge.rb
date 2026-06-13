class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.6.3"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.6.3/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "30101a08d1b84ea3d216e90a50fc2f509833cfb12abc1d469ea55ba780a680cf"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.6.3/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "6dbc993db7b46cf9d9ef6ef73b0f8cd94d4f46174f5cb231bb830d3eb67ea487"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.6.3/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1f091b88c2ee646fde07a5421931e611ce816b2c07272d354b9cb1a768e830bb"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end
