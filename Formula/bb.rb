class Bb < Formula
  desc "A CLI for Bitbucket Server / Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-data-center-cli"
  version "3.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v3.2.0/bb_3.2.0_darwin_arm64.tar.gz"
      sha256 "88ad3f39a04761f8f055f161acf6d209811b64e761ef5eb0a233ad7b6a714cf5"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v3.2.0/bb_3.2.0_darwin_amd64.tar.gz"
      sha256 "46d0f3b808d41c9f3434d01e74578168f15685e6eceee3420b1fa4ce3c00ed76"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v3.2.0/bb_3.2.0_linux_arm64.tar.gz"
      sha256 "d39ab74c4a38aca47a92597ec2595a98c144ee6f6ffc97bbb1c498f2ff60b81b"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v3.2.0/bb_3.2.0_linux_amd64.tar.gz"
      sha256 "15e9f5187a475c0a93dbb791191ddadc2daf224915a96b119011b7565ffcdd57"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
