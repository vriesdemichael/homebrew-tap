class Bb < Formula
  desc "A CLI for Bitbucket Server / Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-server-cli"
  version "1.36.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-server-cli/releases/download/v1.36.0/bb_1.36.0_darwin_arm64.tar.gz"
      sha256 "71946e02ff1fbb69784cddaebc675de4aeafe84a8c27f30a1fc84933ed1cc9bc"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-server-cli/releases/download/v1.36.0/bb_1.36.0_darwin_amd64.tar.gz"
      sha256 "a99000d8e02f554a64cf1f0a22d4f5e52fd4718edcab4fa1bb930779325a7e79"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-server-cli/releases/download/v1.36.0/bb_1.36.0_linux_arm64.tar.gz"
      sha256 "192bb2d4cf084a3a19076565b75e3337783ed64f12d6131aea91752b9b18379a"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-server-cli/releases/download/v1.36.0/bb_1.36.0_linux_amd64.tar.gz"
      sha256 "45bcc3cec4b4129a2647bc97763665f2505356442c0f41c50ae6214245c92a95"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
