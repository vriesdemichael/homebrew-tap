class Bb < Formula
  desc "A CLI for Bitbucket Server / Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-data-center-cli"
  version "2.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.5.0/bb_2.5.0_darwin_arm64.tar.gz"
      sha256 "18db049907a4b40abffb7ba9f728f0e1bf89460f8bbe4b732d913e3a3aa99021"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.5.0/bb_2.5.0_darwin_amd64.tar.gz"
      sha256 "3916dd1b2b3d9c8239499c303984ef541f7270528310e635a2c7cf6c7260ae45"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.5.0/bb_2.5.0_linux_arm64.tar.gz"
      sha256 "bdef47189dece50794b0f2cb19b7164888935c4e145eabbe6c57c5f4220dfdc1"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.5.0/bb_2.5.0_linux_amd64.tar.gz"
      sha256 "53d822825159596988c9f9c8e458bcc3bf324694aebdfc07faa50f4393924ceb"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
