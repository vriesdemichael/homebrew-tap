class Bb < Formula
  desc "A CLI for Bitbucket Server / Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-data-center-cli"
  version "3.5.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v3.5.1/bb_3.5.1_darwin_arm64_noupdate.tar.gz"
      sha256 "62d2226ce8f75bdec92b6254d78e633fbcbbf51d5bda3e922d0407d9913714fe"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v3.5.1/bb_3.5.1_darwin_amd64_noupdate.tar.gz"
      sha256 "424aa9798e17e033547d7a8679d1d536e6b5ddf6663d18f8c8eff37d2d8a827c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v3.5.1/bb_3.5.1_linux_arm64_noupdate.tar.gz"
      sha256 "c81b6af5575194914097e92b09fd08e979844c5e28835d6bee89caa8bda3361d"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v3.5.1/bb_3.5.1_linux_amd64_noupdate.tar.gz"
      sha256 "4181356ccea3237bc6f5de8389811c2adbd2c798f1694e11f0c7279dc2cf5e7c"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
