class Bb < Formula
  desc "A CLI for Bitbucket Server / Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-data-center-cli"
  version "2.8.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.8.0/bb_2.8.0_darwin_arm64.tar.gz"
      sha256 "4591d06dcfcac3b030d11c32d61e873bfdd50b866a82650a0fa271a4f62f3d74"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.8.0/bb_2.8.0_darwin_amd64.tar.gz"
      sha256 "a1f71591f78fcf755346cfb4554148a1b2ae11e684926646f763698fe736f659"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.8.0/bb_2.8.0_linux_arm64.tar.gz"
      sha256 "561c86e25fb62aa8cfb1f029305c1f6574aaa4d00a56c8864bfa065b12d3e96d"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.8.0/bb_2.8.0_linux_amd64.tar.gz"
      sha256 "6d4626dd81f819687d8f014e5115f52bfbb5dd77399468afbd4b3430bba20ddd"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
