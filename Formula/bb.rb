class Bb < Formula
  desc "A CLI for Bitbucket Server / Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-data-center-cli"
  version "3.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v3.3.0/bb_3.3.0_darwin_arm64.tar.gz"
      sha256 "8c32b33ab25b81f008fc61560d74014315a428d5d7104cb1b3effbeb0e944d42"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v3.3.0/bb_3.3.0_darwin_amd64.tar.gz"
      sha256 "04bc0976c7fa0d67933ab50b675630e6759538c608bffabb0e1cd7b98f8dcfb5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v3.3.0/bb_3.3.0_linux_arm64.tar.gz"
      sha256 "de33e36580d12efb8bcb02d599a9fdd5bb5e0734500d85f58326a5417d191e15"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v3.3.0/bb_3.3.0_linux_amd64.tar.gz"
      sha256 "b3ae5cfd02fb3f03715f7d461b69606b088d526655a73b0b33c381335b107536"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
