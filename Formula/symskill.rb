class Symskill < Formula
  desc "Terminal UI and CLI for managing symlinked agent skills"
  homepage "https://github.com/bquenin/symskill"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bquenin/symskill/releases/download/v0.3.0/symskill-darwin-arm64.tar.gz"
      sha256 "e7400e360089a88779963dd47285b49c5b8bec32b6219a65b08a53b39bc61135"
    else
      url "https://github.com/bquenin/symskill/releases/download/v0.3.0/symskill-darwin-amd64.tar.gz"
      sha256 "1ebd78de23d9d03df75d4694cfd79517d45d06be16defcc5fb19b4a14ba5844b"
    end
  end

  on_linux do
    url "https://github.com/bquenin/symskill/releases/download/v0.3.0/symskill-linux-amd64.tar.gz"
    sha256 "824509953179d5fc548864a6aaebbc31f3ce9d3cc4597feb03f633470da45fd0"
  end

  def install
    bin.install "symskill"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/symskill --version")
  end
end
