class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.11.3"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.11.3/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "073b24cf04157fc794393fad5a607183d28a5664fa7bf624e277dcb2b7216591"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.11.3/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "6698fe8be28d635fbe9bf62bbc1b029388341d85f2af10d34c0d834c8f00c638"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.11.3/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5104b3690f1e2fd0ae64ff7b7f09a91a92cd18b7702b8710dea07783d04e4596"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end
