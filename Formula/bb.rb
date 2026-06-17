class Bb < Formula
  desc "A CLI for Bitbucket Server / Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-server-cli"
  version "1.37.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-server-cli/releases/download/v1.37.0/bb_1.37.0_darwin_arm64.tar.gz"
      sha256 "26a19577e9cff1112283e006889a9243fcc33dab43d391ab2de88fb19980d4ac"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-server-cli/releases/download/v1.37.0/bb_1.37.0_darwin_amd64.tar.gz"
      sha256 "9d602dacdf0f3448d92ce6bbec84a903dcf5a577a3f550fb34055b70e5e1b8df"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-server-cli/releases/download/v1.37.0/bb_1.37.0_linux_arm64.tar.gz"
      sha256 "a3d0d6fe4a9ba157baa68638fe49068c4933c3df1d62c75b71758db3b4652833"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-server-cli/releases/download/v1.37.0/bb_1.37.0_linux_amd64.tar.gz"
      sha256 "f81c9fd4243e85ffb13defa024fb446b0006cf97ccedfc9f464cb18cdc66c597"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
