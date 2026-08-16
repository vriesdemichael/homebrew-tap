class Bb < Formula
  desc "A CLI for Bitbucket Server / Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-data-center-cli"
  version "2.0.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.0.4/bb_2.0.4_darwin_arm64.tar.gz"
      sha256 "4cea756138e1c50abddcb32837804b4692e6865af0bc84482088412c352eeccc"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.0.4/bb_2.0.4_darwin_amd64.tar.gz"
      sha256 "4302451a7ae7babb6f48a92dd47064247c5680968c36c247fb90a56d518fe61f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.0.4/bb_2.0.4_linux_arm64.tar.gz"
      sha256 "1204f3b1c438265f28d2f3c2b188eb90855756b9d49244134301225a3e12c315"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.0.4/bb_2.0.4_linux_amd64.tar.gz"
      sha256 "e4a5ccb371f9495d31727db784b1731263dde95e22a06b0f4331c198c0d3d982"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
