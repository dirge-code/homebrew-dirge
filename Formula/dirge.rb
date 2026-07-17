class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.19.12"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.12/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "ff9641c7364e9ac883f4a1fd83a6152721bb22b1036e2b69a880ef351dd05286"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.12/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "8fab7b0aa94a4aee56da483329eec1101e14bbe23b38bfb706f69b5bf8ca4bdb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.12/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "18bec052a0288a4d67a65f6d8ebd2be9fbc15858edd52dc722aa27e03981f406"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end
