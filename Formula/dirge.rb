class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.12.2"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.12.2/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "55060363c2cdec2fce1154a02bd0efe57fb22776628223f97d55a408ceaa628c"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.12.2/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "4199136a9e317560b923cec900446050ae64d62ce143aefa33982286d7f1fa8e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.12.2/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9e7c3380339db377ba209c9f9f4dc602a7f88a15912e8e07bfe8469fa35f5c28"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end
