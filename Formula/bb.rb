class Bb < Formula
  desc "A CLI for Bitbucket Server / Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-data-center-cli"
  version "2.13.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.13.0/bb_2.13.0_darwin_arm64.tar.gz"
      sha256 "a1151b123fe118771d9603d81a4db6062ea1ca5e9ea5e1500bb723563fd03fc8"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.13.0/bb_2.13.0_darwin_amd64.tar.gz"
      sha256 "eec5d8c1f19d669c011c45ce9bdba2faf961bbaa09084851f2444b94da8c3777"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.13.0/bb_2.13.0_linux_arm64.tar.gz"
      sha256 "e8ec30249c6e2ed7bfc47916763510003fe1ea4e7b98ca435d018e4d42422d6d"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v2.13.0/bb_2.13.0_linux_amd64.tar.gz"
      sha256 "adb496fa0676e5836318c3eac3fa7762128f383fccdf5fc5ab3d50afbd3e9ce6"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
