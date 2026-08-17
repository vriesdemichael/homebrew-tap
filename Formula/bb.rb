class Bb < Formula
  desc "A CLI for Bitbucket Server / Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-data-center-cli"
  version "2.0.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.0.6/bb_2.0.6_darwin_arm64.tar.gz"
      sha256 "42c3c0280e73fd168ed1a443f069b557ddfbf192b3bea3511b2d699886a5788d"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.0.6/bb_2.0.6_darwin_amd64.tar.gz"
      sha256 "ce251304f219f5e7e97ca12cc2159ca9d17f74da4742723afcacad8c301a7d40"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.0.6/bb_2.0.6_linux_arm64.tar.gz"
      sha256 "9865697aeb4c5ef2eaff61f5d2f1c0bb6e95f1e05ce44ed8160b70e87620a165"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.0.6/bb_2.0.6_linux_amd64.tar.gz"
      sha256 "d9f17a9b40bde27c2e6c9ebb533553e2ab7f453dee4940a0385ebf94b8e1d1e5"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
