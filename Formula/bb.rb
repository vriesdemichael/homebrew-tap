class Bb < Formula
  desc "A CLI for Bitbucket Server / Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-data-center-cli"
  version "2.6.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.6.0/bb_2.6.0_darwin_arm64.tar.gz"
      sha256 "cc9fec3bdcf84d9087a935a9c5ac8fb509e094e51deaaedca2df2d7ef0d34ae1"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.6.0/bb_2.6.0_darwin_amd64.tar.gz"
      sha256 "fcfdd2723eba202f0812d81c478891bf5c2ff83a5f80bf2c03f349161d482868"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.6.0/bb_2.6.0_linux_arm64.tar.gz"
      sha256 "01ab790c158e837eedf659cb1f750dbaf6e529164e5cec4f136362b00ed42409"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.6.0/bb_2.6.0_linux_amd64.tar.gz"
      sha256 "be0817bc3538826a6f3b9c59abe6f78367cb09771f7f3593006812b13efa61ac"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
