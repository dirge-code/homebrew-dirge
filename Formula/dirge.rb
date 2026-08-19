class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.23.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.23.0/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "4a7b7a9c035e7b6564b0db23342ad0870e509f326e1664b078ad866126a2df5f"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.23.0/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "ca039c91426831bf481d02005c25c81f3f936a60dc92f26f6046e84479cb4d9d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.23.0/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a646530d9c384ebfcfc5111ba6ecbfbb2106cafc7055d08d290f18c5a975485d"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end
