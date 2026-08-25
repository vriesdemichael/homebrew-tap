class Bb < Formula
  desc "A CLI for Bitbucket Server / Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-data-center-cli"
  version "2.9.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.9.1/bb_2.9.1_darwin_arm64.tar.gz"
      sha256 "3e39cc52940f0813e2294906a32c303581d41593055a51cb18731280585a474d"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.9.1/bb_2.9.1_darwin_amd64.tar.gz"
      sha256 "04b72131e126602c85160803a8b69488cf30082ffbeda278652820ed5e16e8ca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.9.1/bb_2.9.1_linux_arm64.tar.gz"
      sha256 "dc2f6be864e900b559888bac370df3f4edd2eada65da23416b80d5d6abc053c3"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.9.1/bb_2.9.1_linux_amd64.tar.gz"
      sha256 "46da138891f2419cf8794e4e030a7cc88bebf826be9e8ee961c9573f5bd6cce6"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
