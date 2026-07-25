class Symskill < Formula
  desc "Terminal UI and CLI for managing symlinked agent skills"
  homepage "https://github.com/bquenin/symskill"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bquenin/symskill/releases/download/v0.3.1/symskill-darwin-arm64.tar.gz"
      sha256 "bf9e3ada7b7baa0a6ddeae7393eada7c521d9e8d5faa5f4e011019cf853e12fd"
    else
      url "https://github.com/bquenin/symskill/releases/download/v0.3.1/symskill-darwin-amd64.tar.gz"
      sha256 "7e3b743e455e3e0b65fdccad114234a847321a24ee50e7a0d6b19882f4a463b1"
    end
  end

  on_linux do
    url "https://github.com/bquenin/symskill/releases/download/v0.3.1/symskill-linux-amd64.tar.gz"
    sha256 "a6d58baf7e86cdf91bb9bbea06be714eeee4c8430e1f13376c9cd05bb937b6d9"
  end

  def install
    bin.install "symskill"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/symskill --version")
  end
end
