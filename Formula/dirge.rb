class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.25.7"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.25.7/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "60b6da31706b88db6efd7534c1884380a1e7890eea4d6ba0a8b8e7aa8639c212"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.25.7/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "6ef63ae3d51a606e12484826bc3674ece82b210a199e3dc399f3a5991d9773d9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.25.7/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b06becfc05ef6d898e5280e10643d1fe46dce07cf473751c9bff3bc397f4cd56"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end
