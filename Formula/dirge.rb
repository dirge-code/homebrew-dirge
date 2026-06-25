class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.12.3"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.12.3/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "b44bd27a6b92b3455ee0d12c436a5f77018204f5d6b8e16c03573b1dd7424fd0"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.12.3/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "be2caaac2678e90fe138974609b11203e971716dea0de57b6b54b0c32600e1ff"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.12.3/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "017c7ac57cd8b5ecd8327e1b42ac7fd45520dae66532889bfe6c5753fb8e759e"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end
