class Bb < Formula
  desc "A CLI for Bitbucket Server / Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-data-center-cli"
  version "2.7.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.7.1/bb_2.7.1_darwin_arm64.tar.gz"
      sha256 "2080dd4dad796831724750a9cdbacd68c241e76afba97a252f01bc15e4683163"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.7.1/bb_2.7.1_darwin_amd64.tar.gz"
      sha256 "1699600da9a061a17ecf2247d08cba82ed9f0937e2c360e0149abf641d3d105f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.7.1/bb_2.7.1_linux_arm64.tar.gz"
      sha256 "083e265fb914ebcb7ff757dd6ab0bba25d78c626e33db9487f60212a145bf36b"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.7.1/bb_2.7.1_linux_amd64.tar.gz"
      sha256 "c3cfe9480588171a6a632c1e228330302179f064ba03700ff9ffd37fb14a8f14"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
