class Bb < Formula
  desc "A CLI for Bitbucket Server / Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-data-center-cli"
  version "2.0.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.0.2/bb_2.0.2_darwin_arm64.tar.gz"
      sha256 "11b37493fc43667055914ed6b955496d6ad35b29f2891a3b9db70fe964c18ce2"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.0.2/bb_2.0.2_darwin_amd64.tar.gz"
      sha256 "74a36bf99da88ed75823a436e2d2ec3c42aedbb8632e224d8b33839674cd92da"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.0.2/bb_2.0.2_linux_arm64.tar.gz"
      sha256 "55cecf45b795ffa6c6eb1bdf8234a8258f048076db532901462d4048778eb24b"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.0.2/bb_2.0.2_linux_amd64.tar.gz"
      sha256 "c1ae7d1e16bc19ac5d8c67d50ffb4ff9eca078674e804c1798a589e8febb4d09"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
