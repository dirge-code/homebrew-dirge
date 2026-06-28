class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.13.8"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.13.8/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "8d3aafbd1dfd7f0ccab7b4d8eb8c96af72b34b1b89d53469f69aaf56eb14e5ec"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.13.8/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "dbcbfdcae866322aa6ced283b4b31276c3425f3048ac51a95be57dae5a642a29"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.13.8/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "033f45774066d1244e463536efc88743f6992e88d3fb30ad8d4e9c7fae5ea5f7"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end
