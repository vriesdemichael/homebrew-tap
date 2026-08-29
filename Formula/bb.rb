class Bb < Formula
  desc "A CLI for Bitbucket Server / Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-data-center-cli"
  version "3.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v3.5.0/bb_3.5.0_darwin_arm64_noupdate.tar.gz"
      sha256 "0096eea1f4574f3cb9049f4a24635a09452573afbf2d9db3602c2771f4a9b264"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v3.5.0/bb_3.5.0_darwin_amd64_noupdate.tar.gz"
      sha256 "13f643deacff2898c06eb3d157a0533a205597166c02570f0a39166f8715f298"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v3.5.0/bb_3.5.0_linux_arm64_noupdate.tar.gz"
      sha256 "fa546c59c30be8b711720ca3d53be2818663e443fa434feaf2510e0d426675cb"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v3.5.0/bb_3.5.0_linux_amd64_noupdate.tar.gz"
      sha256 "e9e6ef6d594985c2dc7e90f0ef12849ca695d9e821ff995b948f4d795b8f37e9"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
