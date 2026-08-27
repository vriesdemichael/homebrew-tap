class Bb < Formula
  desc "A CLI for Bitbucket Server / Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-data-center-cli"
  version "3.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v3.1.0/bb_3.1.0_darwin_arm64.tar.gz"
      sha256 "eabef9c5890ee19985ab9bde038aedbf9a38d269d2f5e2df587e0f2870d9678a"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v3.1.0/bb_3.1.0_darwin_amd64.tar.gz"
      sha256 "73f8d9bdc48deeb6bcdcd1cc5d030e38e7636ebe6a77ca48d9dfe61ffaa10e84"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v3.1.0/bb_3.1.0_linux_arm64.tar.gz"
      sha256 "efd408db903f8064349e9b97cc1e5371bd953c1e9bcc66b443b9c74b38c3b4a7"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v3.1.0/bb_3.1.0_linux_amd64.tar.gz"
      sha256 "9592a307dcbf577e7f24a72a7b92d6fda7200dc8e2f240d59dece8626de0fbe7"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
