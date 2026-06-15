class Bb < Formula
  desc "A CLI for Bitbucket Server / Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-server-cli"
  version "1.35.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-server-cli/releases/download/v1.35.1/bb_1.35.1_darwin_arm64.tar.gz"
      sha256 "7f94b3fd44124a8415b92a555f951463f9f90c55ece0c71c45f9eb06c522754a"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-server-cli/releases/download/v1.35.1/bb_1.35.1_darwin_amd64.tar.gz"
      sha256 "b5dbec2890b1800ca038384002d16ff81fae507c8b63eed745b672016ef35322"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-server-cli/releases/download/v1.35.1/bb_1.35.1_linux_arm64.tar.gz"
      sha256 "7698031c8af13ff9c3cca7b9baab35a4b4ef3f1d7b5178a96f61cc627825d0a9"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-server-cli/releases/download/v1.35.1/bb_1.35.1_linux_amd64.tar.gz"
      sha256 "0aa5ee9fa17064fd64a009e552fb982e9ae8c9c2b7958ca23b3bc9eb2dcfe36b"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
