class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.13.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.13.0/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "43e85df8e4691c0afe781d99514ae237709723e0f52e9b0fd79fccaf3250f7a5"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.13.0/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "0f44b72c203475e4a49a92a5ed8347befdecca14eb80c2eceb8d9a4e194f8983"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.13.0/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2f5bca3d900f4d25c77225ee223f74e23cc31732d045efc47d8fe19a7fcaf14a"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end
