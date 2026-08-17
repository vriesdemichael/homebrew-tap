class Bb < Formula
  desc "A CLI for Bitbucket Server / Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-data-center-cli"
  version "2.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.3.0/bb_2.3.0_darwin_arm64.tar.gz"
      sha256 "74053f96de6bafe3e9b8c4e299ec1979407023e2083b19e84bea6c93774fcb3f"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.3.0/bb_2.3.0_darwin_amd64.tar.gz"
      sha256 "ad06f5b19d84ed8531a4c8df3d5563a46aa7ad1573073bda63f80bfbe3d56c35"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.3.0/bb_2.3.0_linux_arm64.tar.gz"
      sha256 "4b7dab4de11bfa4bc62d7982fa7f6a1171addb6aed0e6a48288a33039becaa1b"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.3.0/bb_2.3.0_linux_amd64.tar.gz"
      sha256 "918af198ed1283390fe53590d5e1024bd34aa7a2fc70cdc26479f82ee224bb06"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
