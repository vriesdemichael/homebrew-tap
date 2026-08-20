class Bb < Formula
  desc "A CLI for Bitbucket Server / Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-data-center-cli"
  version "2.7.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.7.3/bb_2.7.3_darwin_arm64.tar.gz"
      sha256 "5e719065af33bcd66d5b8af6979988257d8bfe23f926accec5428c7fd17efe5a"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.7.3/bb_2.7.3_darwin_amd64.tar.gz"
      sha256 "5abeecbcd5f681e2039aa6e9f17f5441bb3bca3887b9c23e06d6358be1061bd8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.7.3/bb_2.7.3_linux_arm64.tar.gz"
      sha256 "445d614f1b955d1a943dcb0810c99fe9cd3da8cda03e6975a4cb8f4217399c45"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.7.3/bb_2.7.3_linux_amd64.tar.gz"
      sha256 "8f5ab2da927ea27d9075ae74c51783e6e3bbcea9e9c0a7e4ff2b8cf0ea9000e0"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
