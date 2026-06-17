class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.7.6"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.7.6/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "a85795a9111c48005da15ea5b61f9baf1135ce4650af990e90b3ae4da6ced25f"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.7.6/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "3cb2b7c192abaf67f35311fe92068c0a899c5fb5f3e46d3422aabd87e55f842b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.7.6/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "db08fb35e71edb22be2f1a709620e8c933e196274c58a7c126416760bab8391f"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end
