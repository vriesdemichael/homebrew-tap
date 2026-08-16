class Bb < Formula
  desc "A CLI for Bitbucket Server / Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-data-center-cli"
  version "2.0.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.0.5/bb_2.0.5_darwin_arm64.tar.gz"
      sha256 "507041ec4c8619cec253dc01ce42a36f2393278da1966630b73221bee59fcc90"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.0.5/bb_2.0.5_darwin_amd64.tar.gz"
      sha256 "0c4e7e814587b7b24eeb5420290d85730acc363b85768f53c8c11e37ff3d3c80"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.0.5/bb_2.0.5_linux_arm64.tar.gz"
      sha256 "3e94a9bca1e2e6a9c6deade74495b93bb6f9c0f8c55ced64b656d4da1d856dc7"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.0.5/bb_2.0.5_linux_amd64.tar.gz"
      sha256 "595f5dbc9027820be7df616852ce2ee3d1dd45a25cb39d91bfd03e6109044db7"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
