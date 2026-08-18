class Bb < Formula
  desc "A CLI for Bitbucket Server / Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-data-center-cli"
  version "2.6.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.6.2/bb_2.6.2_darwin_arm64.tar.gz"
      sha256 "7c88ae031530393ecf0873406b4b7079f12547851fb2466a099e4d3b77dfc332"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.6.2/bb_2.6.2_darwin_amd64.tar.gz"
      sha256 "69871c2f7b7b4b822d5964b6750133e1268450f4cf2b97f41994e9120ecf7533"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.6.2/bb_2.6.2_linux_arm64.tar.gz"
      sha256 "930f4ea85a36427839a0afca261f85b5659985ad11e47df0bd650f904b598567"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.6.2/bb_2.6.2_linux_amd64.tar.gz"
      sha256 "9338194cb0b93a4802210e50850377b060ad0bf2f8dbfb482e4de7cb94c1de49"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
