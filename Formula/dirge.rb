class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.9.1"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.9.1/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "aaa556d2c43a3980c77d0b5c02b6c90eff25379ec20385e5354dd477de26dc7e"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.9.1/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "663c18262702a58a7295d6fe4eccff8d4e5b2254bc863692c113c893e7ab2ef8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.9.1/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "79ce81eefebdf82afd077d19f6defc1cf74f7e5ae2ad6717f7ae3e39aa549af2"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end
