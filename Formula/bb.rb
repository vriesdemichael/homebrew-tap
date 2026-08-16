class Bb < Formula
  desc "A CLI for Bitbucket Server / Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-data-center-cli"
  version "2.0.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.0.3/bb_2.0.3_darwin_arm64.tar.gz"
      sha256 "3ff9d802e7824c23b0cae8e9c07160144e320328f1483581086618d0c98429c9"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.0.3/bb_2.0.3_darwin_amd64.tar.gz"
      sha256 "f9378a69d83e459e8f46e05a7c69b182a8b52b175a81c0df5271a8d4a403b022"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.0.3/bb_2.0.3_linux_arm64.tar.gz"
      sha256 "37a16f223f0ad85e281ccd1a841a0d50b7517612b6df6d103245113648476c9b"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.0.3/bb_2.0.3_linux_amd64.tar.gz"
      sha256 "aefe7efc5ded833366273da173e3c471564ddb045cfecd3b509be057a300cd5f"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
