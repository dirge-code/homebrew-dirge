class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.6.2"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.6.2/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "5660be774f550c1894278ae185537b3ffec99d8cd42b24eda568f6f3dc5e120c"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.6.2/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "0647819b8911b8de4ecccb8437e3b4f1bb28902faffafc72735fc6b02a37a5db"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.6.2/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3d847b74a6ecd28bf8191a695b7c4e5048cb6ca8e64b94c8ff37c8a5da788d8e"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end
