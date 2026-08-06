class Bb < Formula
  desc "A CLI for Bitbucket Server / Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-data-center-cli"
  version "1.38.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v1.38.2/bb_1.38.2_darwin_arm64.tar.gz"
      sha256 "d39e59f2eab977c97c7dfbd576b2b0fddb5e5179e8dfddd291fb51053d85d36f"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v1.38.2/bb_1.38.2_darwin_amd64.tar.gz"
      sha256 "f4f0200ba6f66f93c7785bf71725d2822b5b9fbc360e2cac372eb4925c55e770"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v1.38.2/bb_1.38.2_linux_arm64.tar.gz"
      sha256 "6e8a78ae5b6fef252ae96554cbd0aaafe9745f5b2e9202fc16655a1b8eccfb2c"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v1.38.2/bb_1.38.2_linux_amd64.tar.gz"
      sha256 "15963c70f1f94a4cd09639ee257f1102c7386e65f2f71ce3e27cfe47c85c1191"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
