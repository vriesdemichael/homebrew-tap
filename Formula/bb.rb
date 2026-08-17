class Bb < Formula
  desc "A CLI for Bitbucket Server / Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-data-center-cli"
  version "2.4.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.4.0/bb_2.4.0_darwin_arm64.tar.gz"
      sha256 "320f03e79e0df99b8a0cc6dcd5f5d785c83d9e98989e1d0734458213145f80e5"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.4.0/bb_2.4.0_darwin_amd64.tar.gz"
      sha256 "4e5f5baafeb4797991d7d0996df010fae26ed64de8bc6a6770fd0d441bc6091b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.4.0/bb_2.4.0_linux_arm64.tar.gz"
      sha256 "97e7520f8e05a041a8adb57127cdd3a86cc1b120b526857e4f401589f6b3795c"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.4.0/bb_2.4.0_linux_amd64.tar.gz"
      sha256 "3c71c9637652a030be8c5abf7f1f40bab0898885f18234a135a569a88e7fd2fd"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
