class Bb < Formula
  desc "A CLI for Bitbucket Data Center"
  homepage "https://github.com/vriesdemichael/bitbucket-data-center-cli"
  version "5.0.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v5.0.1/bb_5.0.1_darwin_arm64_noupdate.tar.gz"
      sha256 "42032ac411246ec0d718e77761bc6da652226cf8d4a623092b0dfe88dbb7218d"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v5.0.1/bb_5.0.1_darwin_amd64_noupdate.tar.gz"
      sha256 "c9a1814ca950b0d4358fa9f3c8078e53628db47fef1473d963ca15a95cbcf472"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v5.0.1/bb_5.0.1_linux_arm64_noupdate.tar.gz"
      sha256 "27f75e3162624764d78f371fbbd2777036f280c9505aa9880ec73d4815f76043"
    end
    on_intel do
      url "https://github.com/vriesdemichael/bitbucket-data-center-cli/releases/download/v5.0.1/bb_5.0.1_linux_amd64_noupdate.tar.gz"
      sha256 "6e4c8875c3176c06fff1010cf33bafcb830a7b4944c49849de30fd195088e2bb"
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
