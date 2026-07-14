class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.19.6"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.6/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "14b97037dba2ab895bea0dad135e4b49442f91e0073abc45a33cd3246b1ac607"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.6/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "9a780ed6f9b6523ba77ed2603d4be3191b996cf75657249d4069c242055b9e03"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.6/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fd0bed12cacd1e3fda78456a906461e41d81c9d7e0c42feb31da6dea56f80ee7"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end
