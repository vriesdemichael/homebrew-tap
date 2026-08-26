class Bb < Formula
  desc "A CLI for Bitbucket Server / Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-data-center-cli"
  version "2.11.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.11.0/bb_2.11.0_darwin_arm64.tar.gz"
      sha256 "f9509180f2c8eaa9885508b0ad5490b11f82a3009b111a94bce7f743d9149f53"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.11.0/bb_2.11.0_darwin_amd64.tar.gz"
      sha256 "285d3adba36c8962b748dcae93ec700d7c7679d195bd0d3439462effb43f306b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.11.0/bb_2.11.0_linux_arm64.tar.gz"
      sha256 "bd37ed45ee6242504a5b0b6cf83d830bff574fde8c07eb6e7ebe0c5a3822ac3d"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.11.0/bb_2.11.0_linux_amd64.tar.gz"
      sha256 "d93c08f5a0ad27c1d44956f6463cba5ac5b1f60b8061acfe88053caf5f465357"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
