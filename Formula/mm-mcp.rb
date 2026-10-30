class MmMcp < Formula
  desc "An MCP server for Mattermost"
  homepage "https://github.com/vriesdemichael/mm-mcp"
  version "0.4.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/mm-mcp/releases/download/v0.4.1/mm-mcp_0.4.1_darwin_arm64.tar.gz"
      sha256 "6f06b6e62efecb2408948fe10d7871d4e2fe517e6b928fd2f66294047d349cc8"
    end
    on_intel do
      url "https://github.com/vriesdemichael/mm-mcp/releases/download/v0.4.1/mm-mcp_0.4.1_darwin_amd64.tar.gz"
      sha256 "2986f07a082b725732015ac8818888fc9f0d1ca95c5a4041d0298dd79b008ac3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/mm-mcp/releases/download/v0.4.1/mm-mcp_0.4.1_linux_arm64.tar.gz"
      sha256 "77fcedfbd014216e6cf60aeb8cabf47f45b86e209bf7b7141efc1575ed6bc0d7"
    end
    on_intel do
      url "https://github.com/vriesdemichael/mm-mcp/releases/download/v0.4.1/mm-mcp_0.4.1_linux_amd64.tar.gz"
      sha256 "f9d4e77b40ff2b0359fd6f263e604309f35c14bf2723dd7c4d2a1c75fcd06269"
    end
  end

  def install
    bin.install "mm-mcp"
  end

  test do
    assert_match "mm-mcp v#{version}", shell_output("#{bin}/mm-mcp version")
  end
end
