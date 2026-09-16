class R105 < Formula
  desc "Native local-first AI harness for OpenAI-compatible backends"
  homepage "https://github.com/bnelabs/r105"
  version "2.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bnelabs/r105/releases/download/v2.3.0/r105-macos-arm64.tar.gz"
      sha256 "730cd1cc54d0dcab18a0a21d82149458d034ce17bc81ddfc142af746d0345c2c"
    else
      url "https://github.com/bnelabs/r105/releases/download/v2.3.0/r105-macos-x86_64.tar.gz"
      sha256 "9521b32022b5c0e74489ab03345917553eb07a7678f03a9bbc0293f3137c93e7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bnelabs/r105/releases/download/v2.3.0/r105-linux-aarch64.tar.gz"
      sha256 "13f35f9268c47f0cb62f77436b513a5543bc8b21693b68c737537b53955340ac"
    else
      url "https://github.com/bnelabs/r105/releases/download/v2.3.0/r105-linux-x86_64.tar.gz"
      sha256 "616635f5d3ca4d3360d6e5e8dd005c6667ac9c5c1a99efac6d4ee653c927ceaa"
    end
  end

  def install
    bin.install "r105"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/r105 --version")
  end
end
