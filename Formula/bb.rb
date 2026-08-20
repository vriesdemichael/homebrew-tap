class Bb < Formula
  desc "A CLI for Bitbucket Server / Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-data-center-cli"
  version "2.7.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.7.2/bb_2.7.2_darwin_arm64.tar.gz"
      sha256 "894a58a90a47c6e3f498fce8a303dbfb2803e01827fa283c707877ee1bd7228b"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.7.2/bb_2.7.2_darwin_amd64.tar.gz"
      sha256 "971a916de0fc385c37c9e11615db0e3b768fc7ba84c8bcca2c84f9972f002d12"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.7.2/bb_2.7.2_linux_arm64.tar.gz"
      sha256 "f9cafb7ca7e1c5e0128435cce14bba117ca2be619bcb9065bf391be0089289a2"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.7.2/bb_2.7.2_linux_amd64.tar.gz"
      sha256 "422a7072eba4dc8c16f3cdb9bbcb20201cfdde09790dd1528a2cac2c2c19b031"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
