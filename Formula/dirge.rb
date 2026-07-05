class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.18.4"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.18.4/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "31d2f83298bae3d41081fc3f3ee20eef4ef3e77d1de88b60657500541ed23435"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.18.4/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "5dc86a184b13e005eed26b851da2562b262e13a58bae84a9b8a7a881e162d5c6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.18.4/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "734ce2059b4b80c76c7413c5e40974b2e66b1bf633bf277cf3d10be27a51cc0b"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end
