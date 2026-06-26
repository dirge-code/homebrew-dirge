class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.13.1"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.13.1/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "aaf498e3464196a93ea7becd1a351e85640dfb8aaad99f64e990680f1067a52e"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.13.1/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "e25bbea1ab7eb5300681b1c450b67264bb3b7e3c4bf3d493c7ef539b27a2f779"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.13.1/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f2506959e0fd49018fadb55e677f845f6271fb45e530e013bfa44a3982ee1185"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end
