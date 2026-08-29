class Bb < Formula
  desc "A CLI for Bitbucket Server / Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-data-center-cli"
  version "3.4.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v3.4.0/bb_3.4.0_darwin_arm64_noupdate.tar.gz"
      sha256 "626a847d01acbd598767bac4495af0a1ec55eaab5bba8ef4a59ebe3c3606e382"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v3.4.0/bb_3.4.0_darwin_amd64_noupdate.tar.gz"
      sha256 "0705ff1921ce17ad791ec32c68b72f25749faf78e77991de9cf992e525fdc6b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v3.4.0/bb_3.4.0_linux_arm64_noupdate.tar.gz"
      sha256 "1881910dbea24915f0e249972a58c9b59529992b55f1433aad7d495244e5c523"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v3.4.0/bb_3.4.0_linux_amd64_noupdate.tar.gz"
      sha256 "56cb0ce6210478b411462f6e7c7232299bad709493df8b5cc88d1a2a6ced009c"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
