class Bb < Formula
  desc "A CLI for Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-data-center-cli"
  version "5.0.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v5.0.0/bb_5.0.0_darwin_arm64_noupdate.tar.gz"
      sha256 "ae4a5caf17915af0ed98d0828b7b6fd9f3bb637451b87524e937213ed632c4f5"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v5.0.0/bb_5.0.0_darwin_amd64_noupdate.tar.gz"
      sha256 "6956933f75e79138ecd4d9289800381b2be2d3e10936ac2c961cd8ebfb73c3f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v5.0.0/bb_5.0.0_linux_arm64_noupdate.tar.gz"
      sha256 "d60cd5e524a68107c4a64fba11414523931341425ec65da1fe4ee9e49113df8e"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v5.0.0/bb_5.0.0_linux_amd64_noupdate.tar.gz"
      sha256 "9b2b345c467af8d72f147361339b86c871da4f8a9ab15ac94e8226fc987f9f4d"
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
