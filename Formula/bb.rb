class Bb < Formula
  desc "A CLI for Bitbucket Server / Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-data-center-cli"
  version "3.5.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v3.5.2/bb_3.5.2_darwin_arm64_noupdate.tar.gz"
      sha256 "b84cd47c319bf038b562e76044f75b925aa6ef317489cea598f546695bc59a93"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v3.5.2/bb_3.5.2_darwin_amd64_noupdate.tar.gz"
      sha256 "7cb8d581b9f8e11ef2344bc7bc34711ee6b328dd20be77be99ec3f4f12d5f4b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v3.5.2/bb_3.5.2_linux_arm64_noupdate.tar.gz"
      sha256 "2597c9f1942658618f6d4b5a5b7e7b0121d621af3cc6bca02157af019cc92df4"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v3.5.2/bb_3.5.2_linux_amd64_noupdate.tar.gz"
      sha256 "c931805509cca3ac505b3b685f63440312f5af087b5ffde69080c85a0901affa"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
