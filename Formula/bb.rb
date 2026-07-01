class Bb < Formula
  desc "A CLI for Bitbucket Server / Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-data-center-cli"
  version "1.37.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v1.37.3/bb_1.37.3_darwin_arm64.tar.gz"
      sha256 "7f97bb486a725b496af5e273c16111c86a25fa706aab24b812d3831b7451d3de"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v1.37.3/bb_1.37.3_darwin_amd64.tar.gz"
      sha256 "1a3858a97616a61565224f5e892432ce02f8af37e2bf958645a3c66eddb96a64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v1.37.3/bb_1.37.3_linux_arm64.tar.gz"
      sha256 "c609fe70db4877d6b347415a8a41ae301ec34fc2a23df6d1ca395aef05076f91"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v1.37.3/bb_1.37.3_linux_amd64.tar.gz"
      sha256 "44228d9b416b7e5b23015d372ae1f25a0d82a14b1dbe6d20b33d5bebf2cd0a37"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
