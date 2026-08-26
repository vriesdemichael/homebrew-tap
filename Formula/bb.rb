class Bb < Formula
  desc "A CLI for Bitbucket Server / Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-data-center-cli"
  version "2.10.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.10.0/bb_2.10.0_darwin_arm64.tar.gz"
      sha256 "752fde55ca3e5273d93af0fba50a9ce80714d5780629e3b46b3a243f9e9d1c20"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.10.0/bb_2.10.0_darwin_amd64.tar.gz"
      sha256 "71db3fd79f9cc506ec82d9e4bc5aec0684aa803f5ecc9e3acb462ea79808c62b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.10.0/bb_2.10.0_linux_arm64.tar.gz"
      sha256 "974b3c9e9ffeddffb9c0faecea6fc119ae1cffc074825e9d6f58386cb83ed087"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.10.0/bb_2.10.0_linux_amd64.tar.gz"
      sha256 "dea614abf7c769cc31898670263ca5c56a40cadc669d20753dc5b55d69e0ea4d"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
