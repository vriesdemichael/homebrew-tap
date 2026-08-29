class Bb < Formula
  desc "A CLI for Bitbucket Server / Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-data-center-cli"
  version "3.3.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v3.3.2/bb_3.3.2_darwin_arm64_noupdate.tar.gz"
      sha256 "b69bf293f4c94a591f69232bf4f3893354f791b555f5e45c540f94c4416e4b78"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v3.3.2/bb_3.3.2_darwin_amd64_noupdate.tar.gz"
      sha256 "aa421a2a1a2a98a9bf587bf5822174753316c1e3e98616e32b0c344305530668"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v3.3.2/bb_3.3.2_linux_arm64_noupdate.tar.gz"
      sha256 "5196821d0a4e97e9e6ecf8b2d8950addb90db638eb3ca5069ab9d2c4cd48626b"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v3.3.2/bb_3.3.2_linux_amd64_noupdate.tar.gz"
      sha256 "1a2bd7568dcbdee58374bb4d1c0c3047273dd58462ab44404db541629bdc7663"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
