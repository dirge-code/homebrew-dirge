class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.19.22"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.22/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "162ee0e5e153360eec8e1393287831aaa5ee706b87b20a7f9acd2adcfb40ce94"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.22/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "91444b11f260073d6579bdfb9e7dedeccf6a503b74dc0ab78182724a8d9032d6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.22/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3ab43c5c548630a38ae705a01dfb4cfacf16fbeceb216191b07acb034efd7dd7"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end
