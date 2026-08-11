class Bb < Formula
  desc "A CLI for Bitbucket Server / Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-data-center-cli"
  version "2.0.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.0.1/bb_2.0.1_darwin_arm64.tar.gz"
      sha256 "b1a07410013ec6699cbd8bee5affc5040dbc913624659cc30b29984a500bf174"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.0.1/bb_2.0.1_darwin_amd64.tar.gz"
      sha256 "383ea9517320cf6578b3a961c6d648140ec23d1d19e489458e02867613e5825f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.0.1/bb_2.0.1_linux_arm64.tar.gz"
      sha256 "f584831d6d67ef01638c870380113c83df5171f5d65d3c881f06efdc54ad0c75"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.0.1/bb_2.0.1_linux_amd64.tar.gz"
      sha256 "ff26053431e65b25497993a33d2736f99b339860d8cca05217c3657b6347b78f"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
