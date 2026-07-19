class Dirge < Formula
  desc "Batteries-included Rust coding agent for the terminal"
  homepage "https://github.com/dirge-code/dirge"
  version "0.19.17"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.17/dirge-aarch64-apple-darwin.tar.gz"
      sha256 "5caf8de0c959b2edf6a3f5b82ab86a1ed0981cfc54e503aaafb8b4fdb3f563dd"
    end
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.17/dirge-x86_64-apple-darwin.tar.gz"
      sha256 "80af9b66d3f63f9ef1d1116266a48857cdb70013ff8ced32bdcb6206a7424664"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dirge-code/dirge/releases/download/v0.19.17/dirge-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4aa778c605bd2a9acfbf4129bf5518c67ce9304bc943106f93be984b4c38101f"
    end
  end

  def install
    bin.install "dirge"
  end

  test do
    assert_match "dirge", shell_output("#{bin}/dirge --help 2>&1")
  end
end
