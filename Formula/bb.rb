class Bb < Formula
  desc "A CLI for Bitbucket Server / Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-server-cli"
  version "1.35.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-server-cli/releases/download/v1.35.2/bb_1.35.2_darwin_arm64.tar.gz"
      sha256 "5315dbf24a16e4689694e4dc834c6bb2f649c89d44e42fb9cce0ec080932c34b"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-server-cli/releases/download/v1.35.2/bb_1.35.2_darwin_amd64.tar.gz"
      sha256 "7f7cffa4dc85f3eaaeb4d3190043bc430902f87413c2672da6f38caeffa6ef31"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-server-cli/releases/download/v1.35.2/bb_1.35.2_linux_arm64.tar.gz"
      sha256 "4ea74e3abb34dc3a2aadf80d7939cffb89e219ee3c17a27488e07ad0ad09d2c5"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-server-cli/releases/download/v1.35.2/bb_1.35.2_linux_amd64.tar.gz"
      sha256 "f1d86f16c4468808336985ff348e6e957e49f922f56111622f1f05ae571bbba2"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
