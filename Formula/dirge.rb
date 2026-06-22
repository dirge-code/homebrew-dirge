class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.11.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.11.0/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "401a15e00b4775b65a92ed24be302ffb282ef333e83fcd6210738c0b8f312e09"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.11.0/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "0cfa470cc8c941b176720c8d6596cafeeecf303cbb69d7411e4e678c74d0a8fd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.11.0/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "85c9089c75658aae555b9f48f083c42091e534f0823c55f711fadd1bb0bc0582"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end
