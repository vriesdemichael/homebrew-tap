class Bb < Formula
  desc "A CLI for Bitbucket Server / Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-data-center-cli"
  version "2.0.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.0.0/bb_2.0.0_darwin_arm64.tar.gz"
      sha256 "3792ccd03be8bd991dbb4be39a5582c9981b777b6bce49590f11aba35c5356dd"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.0.0/bb_2.0.0_darwin_amd64.tar.gz"
      sha256 "0c3f126a9184a71b8c5980f721a44b272742a3d418b90b8b5fb23fc7d2d60315"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.0.0/bb_2.0.0_linux_arm64.tar.gz"
      sha256 "ca43cf7cd8038fa41eef0e3304b63f03c07e7acfc3a8ae3675dff35655102701"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.0.0/bb_2.0.0_linux_amd64.tar.gz"
      sha256 "26321588db113975520fe21264b8bbf86df84dd8d8ece66d41cbc8ee25c249d3"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
