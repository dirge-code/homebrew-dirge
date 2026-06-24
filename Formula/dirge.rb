class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.12.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.12.0/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "6a228ffc13ed9214a6d3c78511ba32b51a7fb1fdbfa78d27f7bbb293cd37f438"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.12.0/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "e8fb8c6bd522b1880da7e97d039e7efbd11d4e13af66ea0485d54a124e3b522e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.12.0/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "16be8d0fdc405494226b0735f3145d802e248e7d286577385ec62892d96df8c3"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end
