class Bb < Formula
  desc "A CLI for Bitbucket Server / Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-data-center-cli"
  version "2.9.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.9.0/bb_2.9.0_darwin_arm64.tar.gz"
      sha256 "82599396135f90b1a04c6a6acf496ccc4b296a5959c9a07712128ade4de244e7"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.9.0/bb_2.9.0_darwin_amd64.tar.gz"
      sha256 "532af0c79b235e52d6eaeef7151aa76dc325987f345e67c067854166b5ba612f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.9.0/bb_2.9.0_linux_arm64.tar.gz"
      sha256 "eeb05272c7168aa18dfc4d1b417215c1a256966253cf10388550f341d7c42f6b"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.9.0/bb_2.9.0_linux_amd64.tar.gz"
      sha256 "207ba89fc2b66211faf865ed8c183c3dfc542b0836215f058cd23c6fee2ebb5b"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
