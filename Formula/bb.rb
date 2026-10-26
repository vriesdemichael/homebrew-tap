class Bb < Formula
  desc "A CLI for Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-data-center-cli"
  version "6.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v6.1.0/bb_6.1.0_darwin_arm64_noupdate.tar.gz"
      sha256 "bc15ac8f30edb1d13632cf8ddaaec8bec36c2a35d0365f3b8fdf495102b4e632"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v6.1.0/bb_6.1.0_darwin_amd64_noupdate.tar.gz"
      sha256 "cc4e0c583e9e3a45ae0c59001c5a1a31e7d722c4b1f610a64f79d01aed7713ac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v6.1.0/bb_6.1.0_linux_arm64_noupdate.tar.gz"
      sha256 "c82ca2b1b79b2b6ec4b95fb8cd0418577ecf70ed5b4008bcf5b243038119dfa7"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v6.1.0/bb_6.1.0_linux_amd64_noupdate.tar.gz"
      sha256 "2cdcc76f033c36d9d1d3cf313b0be047a978d1aca52e42208e6ac38d21df2940"
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
