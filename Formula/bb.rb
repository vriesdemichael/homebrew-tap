class Bb < Formula
  desc "A CLI for Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-data-center-cli"
  version "6.0.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v6.0.0/bb_6.0.0_darwin_arm64_noupdate.tar.gz"
      sha256 "2b6680b102f031e47d2341ceb4242d22f86a24bf4e970fc4bf599ee6b7b6e2f2"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v6.0.0/bb_6.0.0_darwin_amd64_noupdate.tar.gz"
      sha256 "4f7d0470e06e5b69890e5098fc0e4a1183cd8d0b325d0301d5e51c33feb45628"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v6.0.0/bb_6.0.0_linux_arm64_noupdate.tar.gz"
      sha256 "2848ed6536a0985a05e7c3ee759dcb793d170d64f19f42dac48576441ca4a5e3"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v6.0.0/bb_6.0.0_linux_amd64_noupdate.tar.gz"
      sha256 "193479d857e396a20d036f896bc28273caca61353b1f340fa90412dbee1d7ada"
    end
  end

  def install
    bin.install "bb"
    generate_completions_from_executable(bin/"bb", shell_parameter_format: :cobra)
  end

  def caveats
    <<~EOS
      Completion for bash, zsh and fish is installed with Homebrew's other
      completions. Each user sets up the rest:
        bb ai skill install --global               the agent skill, for coding agents
        bb completion install --shell powershell   completion in PowerShell (pwsh)
      Run the skill install again after an upgrade, so the skill matches this bb.
    EOS
  end

  test do
    system "#{bin}/bb", "--version"
  end
end
