class MmMcp < Formula
  desc "An MCP server for Mattermost"
  homepage "https://github.com/vriesdemichael/mm-mcp"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/mm-mcp/releases/download/v0.4.0/mm-mcp_0.4.0_darwin_arm64.tar.gz"
      sha256 "fa2e587bd3bac1b5152320c06569edf16111c84ce914daf4b41a650d74746284"
    end
    on_intel do
      url "https://github.com/vriesdemichael/mm-mcp/releases/download/v0.4.0/mm-mcp_0.4.0_darwin_amd64.tar.gz"
      sha256 "e95bd424dd83c1d12987f583b9fc09e7bad6967215266d45cd98e4f9e334c090"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/mm-mcp/releases/download/v0.4.0/mm-mcp_0.4.0_linux_arm64.tar.gz"
      sha256 "2059c601401e2822159ece2446c23b29e16b4da38d180209cca44ef24f70930d"
    end
    on_intel do
      url "https://github.com/vriesdemichael/mm-mcp/releases/download/v0.4.0/mm-mcp_0.4.0_linux_amd64.tar.gz"
      sha256 "136c62b4f5d4c10c349eea3e071be7d31b8f95ed2a5fcf8b696f8ee1bef983cf"
    end
  end

  def install
    bin.install "mm-mcp"
  end

  test do
    assert_match "mm-mcp v#{version}", shell_output("#{bin}/mm-mcp version")
  end
end
