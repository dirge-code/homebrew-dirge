class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.10.2"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.10.2/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "627e14aed412f29c790a4d2c220c4155a9fa1998915be49642c05e48a30db613"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.10.2/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "9b2b948d8a544bceab477eaea3e87ae64cd824f482915078618f4e32cac95077"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.10.2/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3724fc9de81c3ca58cb5400f9d3b6eaafcf2c9ee88a95e7fb2e185f5a04dd455"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end
