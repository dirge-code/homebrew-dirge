class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.12.4"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.12.4/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "981ce4201a1af91eb522acc6119cff13d9e866fbc580209b44c9ab04fb071241"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.12.4/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "77f4ffeeb11c8765f94cb7a53c820a95b82757cb1be55c97365e7fd5e5029ead"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.12.4/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8151337cb8e7f198deb9c8869c7252f83ad6a4bf219dcc4f0adc932ed125a7b3"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end
