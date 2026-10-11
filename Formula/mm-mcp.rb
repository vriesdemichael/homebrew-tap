class MmMcp < Formula
  desc "An MCP server for Mattermost"
  homepage "https://github.com/vriesdemichael/mm-mcp"
  version "0.3.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/mm-mcp/releases/download/v0.3.1/mm-mcp_0.3.1_darwin_arm64.tar.gz"
      sha256 "8a0de83d21aabd58b323b92bc9d9e7d2d4d1cf636f01b17c6b1fc890538b6f17"
    end
    on_intel do
      url "https://github.com/vriesdemichael/mm-mcp/releases/download/v0.3.1/mm-mcp_0.3.1_darwin_amd64.tar.gz"
      sha256 "5799abcf1b687f59e327f75d00a05ca81ce6c6787fe557b44f5f790734cc4a4f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/mm-mcp/releases/download/v0.3.1/mm-mcp_0.3.1_linux_arm64.tar.gz"
      sha256 "899494a234fde07d521fea3d7b08df1115cd5bffc3df12cf8b96abe55ede2fbc"
    end
    on_intel do
      url "https://github.com/vriesdemichael/mm-mcp/releases/download/v0.3.1/mm-mcp_0.3.1_linux_amd64.tar.gz"
      sha256 "b7f161eabae99361afa52453dd12f7b7eb9b29623ff029f605427a44f43ae0e5"
    end
  end

  def install
    bin.install "mm-mcp"
  end

  test do
    assert_match "mm-mcp v#{version}", shell_output("#{bin}/mm-mcp version")
  end
end
