class Bb < Formula
  desc "A CLI for Bitbucket Server / Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-data-center-cli"
  version "2.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.2.0/bb_2.2.0_darwin_arm64.tar.gz"
      sha256 "f6d985bb8d0778c59feb49a69b57ae860d4bfe7d4c0b1b2a493b5836dfcf31a5"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.2.0/bb_2.2.0_darwin_amd64.tar.gz"
      sha256 "688d903bb418e06cfc84e41b03e1cac963a7b29660e6ad2acb9b762620f134d2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.2.0/bb_2.2.0_linux_arm64.tar.gz"
      sha256 "7f784d92b65031653098f6fcd4e73999a4a039602b4992348ecb806b7245151c"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.2.0/bb_2.2.0_linux_amd64.tar.gz"
      sha256 "5694670585b2a7dbe5da5a4d2a0f3da4d35b7458951152d434fea24eb562ac9d"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
