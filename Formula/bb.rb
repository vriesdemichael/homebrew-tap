class Bb < Formula
  desc "A CLI for Bitbucket Server / Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-data-center-cli"
  version "3.0.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v3.0.0/bb_3.0.0_darwin_arm64.tar.gz"
      sha256 "c7eab5d93c674183d27fcd6d4450d4afe85eba2e3314ad05a8f46499e6c7f22f"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v3.0.0/bb_3.0.0_darwin_amd64.tar.gz"
      sha256 "4fcab013c8b1b3bbcc18e98924e987fae1476a8e9dd1dbdef569a3bb929ef566"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v3.0.0/bb_3.0.0_linux_arm64.tar.gz"
      sha256 "4816fb3c5deb89b6a2e8600705f6b267434fbfdff7c294db70f76eb151fc9108"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v3.0.0/bb_3.0.0_linux_amd64.tar.gz"
      sha256 "1d1b292e184316401de9fa160b1d5f75a14cd11228d977e95b4356a834c8582c"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
