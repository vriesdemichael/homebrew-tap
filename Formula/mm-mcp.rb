class MmMcp < Formula
  desc "An MCP server for Mattermost"
  homepage "https://github.com/vriesdemichael/mm-mcp"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/mm-mcp/releases/download/v0.3.0/mm-mcp_0.3.0_darwin_arm64.tar.gz"
      sha256 "1b1da40abf42fc6823bcf9b79086bdf6bee9a4a57d52fb3782a38b3d531f7884"
    end
    on_intel do
      url "https://github.com/vriesdemichael/mm-mcp/releases/download/v0.3.0/mm-mcp_0.3.0_darwin_amd64.tar.gz"
      sha256 "85cac33fbd61442df08ab7b4b52db0f7644434c59faba27d65c56a5ac7382555"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/mm-mcp/releases/download/v0.3.0/mm-mcp_0.3.0_linux_arm64.tar.gz"
      sha256 "16e6479b14501df9d2a3696d22e7fc682cef8aed894e217989d6ebb0ef4d8e15"
    end
    on_intel do
      url "https://github.com/vriesdemichael/mm-mcp/releases/download/v0.3.0/mm-mcp_0.3.0_linux_amd64.tar.gz"
      sha256 "9d312390e77ffde74b24ab48ec915f38c30259f044f07862224b094a308b5cad"
    end
  end

  def install
    bin.install "mm-mcp"
  end

  test do
    assert_match "mm-mcp v#{version}", shell_output("#{bin}/mm-mcp version")
  end
end
