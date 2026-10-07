class MmMcp < Formula
  desc "An MCP server for Mattermost"
  homepage "https://github.com/vriesdemichael/mm-mcp"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/mm-mcp/releases/download/v0.1.0/mm-mcp_0.1.0_darwin_arm64.tar.gz"
      sha256 "9075ea99f77e6d25f95c423aba9788fafaf035295e6f44704c6e887ca1a3c1b9"
    end
    on_intel do
      url "https://github.com/vriesdemichael/mm-mcp/releases/download/v0.1.0/mm-mcp_0.1.0_darwin_amd64.tar.gz"
      sha256 "97799f332dfc57748af350df5e82c3a5be5d0f101c3f39435fc8cfbd42bba3e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/mm-mcp/releases/download/v0.1.0/mm-mcp_0.1.0_linux_arm64.tar.gz"
      sha256 "47d4e2521edb97587814d532e21aed2ad3a51436ac9ec4d5dac4a2c34b1b016e"
    end
    on_intel do
      url "https://github.com/vriesdemichael/mm-mcp/releases/download/v0.1.0/mm-mcp_0.1.0_linux_amd64.tar.gz"
      sha256 "c87391695e43504b1eaf40f3a357dcbf51db40be27d13954aeced0b0b6a250e9"
    end
  end

  def install
    bin.install "mm-mcp"
  end

  test do
    assert_match "mm-mcp v#{version}", shell_output("#{bin}/mm-mcp version")
  end
end
