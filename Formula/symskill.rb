class Symskill < Formula
  desc "Terminal UI and CLI for managing symlinked agent skills"
  homepage "https://github.com/bquenin/symskill"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bquenin/symskill/releases/download/v0.1.0/symskill-darwin-arm64.tar.gz"
      sha256 "a3753fb33b8c45ccf4dd2e8ad6fe29f6566ff6b4a5f1336402ddbdf6aaa79243"
    else
      url "https://github.com/bquenin/symskill/releases/download/v0.1.0/symskill-darwin-amd64.tar.gz"
      sha256 "1a79291747fef0ae185153d1eb5f5fc71f1193be7ef2457cde639b80f37611db"
    end
  end

  on_linux do
    url "https://github.com/bquenin/symskill/releases/download/v0.1.0/symskill-linux-amd64.tar.gz"
    sha256 "54690acf2daa6c1e1d9bd526a8a1f30192307cf451d7466afc866bf7ff06a079"
  end

  def install
    bin.install "symskill"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/symskill --version")
  end
end
