class Bb < Formula
  desc "A CLI for Bitbucket Server / Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-data-center-cli"
  version "1.37.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v1.37.1/bb_1.37.1_darwin_arm64.tar.gz"
      sha256 "a3fcd640c00b98aaa82d861a7c9134c14ec68071152aa5ec5873fe9a403c6461"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v1.37.1/bb_1.37.1_darwin_amd64.tar.gz"
      sha256 "9afad5f6bff0c24966961b4102e495dfb21935e5cdd83e82d0b2c7cc2b387257"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v1.37.1/bb_1.37.1_linux_arm64.tar.gz"
      sha256 "174f18fcb85bed7c1f317ea9aa1058f94c7e6e92c4eed6ed3f24d4c66509de0e"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v1.37.1/bb_1.37.1_linux_amd64.tar.gz"
      sha256 "3e861f0aa883bce56caa6f4aefbcf1bfb961213b0efcc1b7f4094a14c9049245"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
