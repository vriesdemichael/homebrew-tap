class Bb < Formula
  desc "A CLI for Bitbucket Server / Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-data-center-cli"
  version "2.12.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.12.0/bb_2.12.0_darwin_arm64.tar.gz"
      sha256 "bf8deb68c5eb524af1d51654df66dcb196b20d6298ec725e7a03ab1558084786"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.12.0/bb_2.12.0_darwin_amd64.tar.gz"
      sha256 "864f1372405bab12029dcdfb6fb6445eafbb6503eb39db4a6c5194d67d2752f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.12.0/bb_2.12.0_linux_arm64.tar.gz"
      sha256 "73dbe8a9acfd91bb3f564bf960deb140f54e372bd45e760c06a76303f1588c7f"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.12.0/bb_2.12.0_linux_amd64.tar.gz"
      sha256 "afa5f201f09ad63cbca538acc088b728d11fd4629ed0843de57aa61370e5f25f"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
