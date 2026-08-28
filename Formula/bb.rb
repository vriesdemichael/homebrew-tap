class Bb < Formula
  desc "A CLI for Bitbucket Server / Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-data-center-cli"
  version "3.3.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v3.3.1/bb_3.3.1_darwin_arm64.tar.gz"
      sha256 "dd00130f119189ad3018acfe18e68b2d629ab6b4f22decf4352f3b907b793b90"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v3.3.1/bb_3.3.1_darwin_amd64.tar.gz"
      sha256 "0df0249e54816713d8f6fceaf8a55459868dd0e2023ba5ff7d827a486bf731ad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v3.3.1/bb_3.3.1_linux_arm64.tar.gz"
      sha256 "3a380a06c6cff17dec27e497269d9c6a38bc9958653f8bfdf46b171b4b682338"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v3.3.1/bb_3.3.1_linux_amd64.tar.gz"
      sha256 "f46e15298d2f7d6437cc552323e6f01bf082031d6db22bf91856f363977c7d56"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
