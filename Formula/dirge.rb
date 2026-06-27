class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.13.3"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.13.3/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "e790f90c1b902a8a3501451525c0acfd0699c9b76249ed18b4bea28841ec349f"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.13.3/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "050a899c57be1cb04fb41975686fc4f228a98d50f5ab88c2815121681b46ff9c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.13.3/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "76f001c22e5f59c033838d04232d0289d081f604ce293c50b9c4d2f0cb2ee873"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end
