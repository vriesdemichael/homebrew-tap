class Bb < Formula
  desc "A CLI for Bitbucket Server / Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-data-center-cli"
  version "2.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.1.0/bb_2.1.0_darwin_arm64.tar.gz"
      sha256 "50d6b8784beb4848575cb1e9395e9a3530ef8f7665a5c0c0a91b79767222807d"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.1.0/bb_2.1.0_darwin_amd64.tar.gz"
      sha256 "5ccb5f678af7bb3dc3d37117b830035d9bbb07e70795ae0ce83b669e458a2171"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.1.0/bb_2.1.0_linux_arm64.tar.gz"
      sha256 "3e796a0a8ff8e87f0cb0b3a04f9ad016d83b26ed0b5de3c886a19ab86a28125e"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.1.0/bb_2.1.0_linux_amd64.tar.gz"
      sha256 "be2df13497cba04de613c071ac92176c2fd27eb4c8d2347f83746fed67bd5670"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
