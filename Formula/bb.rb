class Bb < Formula
  desc "A CLI for Bitbucket Server / Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-data-center-cli"
  version "4.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v4.1.0/bb_4.1.0_darwin_arm64_noupdate.tar.gz"
      sha256 "23679063921dd47f284cbb25290236f966a0a70b78abeb3d44ef4c3bb68624c6"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v4.1.0/bb_4.1.0_darwin_amd64_noupdate.tar.gz"
      sha256 "a0de58341db7c7da5a98e535f3964844f51caebbbbe521f3d4f0226445d7dd2e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v4.1.0/bb_4.1.0_linux_arm64_noupdate.tar.gz"
      sha256 "a89da902213051f56672cfbac28e3df3207dfb217ded1b0356d4488e0ea8ff3e"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v4.1.0/bb_4.1.0_linux_amd64_noupdate.tar.gz"
      sha256 "038eeaffeefb3b8f0522f479f093147c17381ccbad56f95092c5593b67719dc0"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
