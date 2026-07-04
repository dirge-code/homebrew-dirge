class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.18.3"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.18.3/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "86fa1614946a719cf7a8dae50d786d36a7b9c3d3fe3ef30f665e26cdf135dfa6"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.18.3/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "8ae40ebadaf5445d15b783e35d38ae0f54b821ae1e3d37bcfa543d79c1ca97f9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.18.3/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d129cb9c4d05b773b62d8b902a9551544141fa715d718ccd63e203ff7ddb3744"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end
