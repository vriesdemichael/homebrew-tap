class Bb < Formula
  desc "A CLI for Bitbucket Server / Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-data-center-cli"
  version "2.6.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.6.1/bb_2.6.1_darwin_arm64.tar.gz"
      sha256 "1d1791c18a7378bafc4434cd8fee7e202050410ba10ad37ac02cb8098d0aeff0"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.6.1/bb_2.6.1_darwin_amd64.tar.gz"
      sha256 "4d11b49906275943060f66c2674badec90d63f40d71efe96a7059144645ed1d0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.6.1/bb_2.6.1_linux_arm64.tar.gz"
      sha256 "6e8cdccabdb780c03a522ecc312763a04b992c8452c0e711a4b5282aebcd319c"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.6.1/bb_2.6.1_linux_amd64.tar.gz"
      sha256 "6ec5c546712dc2933ea8179fe545a03abc0b83f52b96fea6f3da5c997cd75b48"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
