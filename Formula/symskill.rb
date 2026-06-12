class Symskill < Formula
  desc "Terminal UI and CLI for managing symlinked agent skills"
  homepage "https://github.com/bquenin/symskill"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bquenin/symskill/releases/download/v0.2.0/symskill-darwin-arm64.tar.gz"
      sha256 "2f1ff62f6bcee0de30bf8fdc91798af4624e105ba7a45a646a8aa79fcb218428"
    else
      url "https://github.com/bquenin/symskill/releases/download/v0.2.0/symskill-darwin-amd64.tar.gz"
      sha256 "758710f7d22115f5e74648dc969703f3814176fcd76bba001a4d415a2cc305db"
    end
  end

  on_linux do
    url "https://github.com/bquenin/symskill/releases/download/v0.2.0/symskill-linux-amd64.tar.gz"
    sha256 "72a9cb5845cb43540ce372445c551f32f4adec935c128a865a950cd6e409c01a"
  end

  def install
    bin.install "symskill"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/symskill --version")
  end
end
