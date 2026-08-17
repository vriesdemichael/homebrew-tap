class Bb < Formula
  desc "A CLI for Bitbucket Server / Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-data-center-cli"
  version "2.0.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.0.7/bb_2.0.7_darwin_arm64.tar.gz"
      sha256 "399e4e06cc25e77f24532ceb817ce1378a9bf30d2af927b118b15fdf3864c927"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.0.7/bb_2.0.7_darwin_amd64.tar.gz"
      sha256 "baeef16f72d7cd867cbf8af45383f8f0c02116119dd8af399c40df3d92c48f73"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.0.7/bb_2.0.7_linux_arm64.tar.gz"
      sha256 "c8b918252426630e519505fb031ba400d6b6f3c7ded5462c29a669b378ba5d5e"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.0.7/bb_2.0.7_linux_amd64.tar.gz"
      sha256 "116000a3004e5f3afb6cde2436232879cd417a6ed6642a8df3cacb7e1591eb61"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
