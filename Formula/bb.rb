class Bb < Formula
  desc "A CLI for Bitbucket Server / Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-data-center-cli"
  version "1.37.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v1.37.2/bb_1.37.2_darwin_arm64.tar.gz"
      sha256 "46348744cc13b47a00487e0fbec7857dc4ab29b2075702c3961447e4f148c698"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v1.37.2/bb_1.37.2_darwin_amd64.tar.gz"
      sha256 "4b943fb6c3a1a4108c8a7e585fdec4ff211cfdd82cd6c1247e1bb1938f8025df"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v1.37.2/bb_1.37.2_linux_arm64.tar.gz"
      sha256 "ee8e4d5b10deab2b83e660f58e5d69eff00735fd4678cc61766ae312a6e672c2"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v1.37.2/bb_1.37.2_linux_amd64.tar.gz"
      sha256 "77674ac1113879902af54d1fda97725c779e91ae2e782db2482461712b182493"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
