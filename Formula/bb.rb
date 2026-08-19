class Bb < Formula
  desc "A CLI for Bitbucket Server / Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-data-center-cli"
  version "2.7.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.7.0/bb_2.7.0_darwin_arm64.tar.gz"
      sha256 "3d162dcadb46323f0604935fc652f8985e34744efe6205c81222a722ca7aa157"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.7.0/bb_2.7.0_darwin_amd64.tar.gz"
      sha256 "1a882bcc83ce0a1c22867e8a80b8972eda16a1dc3c65ec27c7adb3fc8293a2ee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.7.0/bb_2.7.0_linux_arm64.tar.gz"
      sha256 "1318f7217fbff353d3ed698e32b29e85dfbc9cb905c918d42708af3f284faaf0"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.7.0/bb_2.7.0_linux_amd64.tar.gz"
      sha256 "2bf3c0f10ee800167a0a8f484ac4738facd677a50ac93be79b49c1ca294061fa"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
