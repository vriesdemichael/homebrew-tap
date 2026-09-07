class Bb < Formula
  desc "A CLI for Bitbucket Server / Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-data-center-cli"
  version "4.0.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v4.0.0/bb_4.0.0_darwin_arm64_noupdate.tar.gz"
      sha256 "9ba9a70e367e423a2d7561ada98019b757995c0884a1099bbd06d927965c9c2d"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v4.0.0/bb_4.0.0_darwin_amd64_noupdate.tar.gz"
      sha256 "7ce160c0f7d86168917cd944e2eed4d51f1689fcc9c2e79f36331ca92f5e8ae6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v4.0.0/bb_4.0.0_linux_arm64_noupdate.tar.gz"
      sha256 "41494039a883830bb14ca88d513739238db8cff553ccef322264256329cdb9eb"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v4.0.0/bb_4.0.0_linux_amd64_noupdate.tar.gz"
      sha256 "08503a80ea1c30fc23a2f2ff90aa2e8ea41d169e8970258aba86a7ec1e60a135"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
