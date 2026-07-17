class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.19.10"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.10/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "68dcd57f0a921221da5184497579f41aef25282ee73401dd76cbeae8a70c9e28"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.10/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "99e7c81cc7c2e1b034ae92f457dac90db12c8a90313313073794733248e1f4a0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.10/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d788f61a1a766d5a6a550208ac1d5d929df4fe0c4652d5c9d49bfbe53b4f08c0"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end
