class MmMcp < Formula
  desc "An MCP server for Mattermost"
  homepage "https://github.com/vriesdemichael/mm-mcp"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/vriesdemichael/mm-mcp/releases/download/v0.2.0/mm-mcp_0.2.0_darwin_arm64.tar.gz"
      sha256 "4c77eff1e4150c2735d4f5347fca242dc020713fbe223b1bf00e04fa759d22be"
    end
    on_intel do
      url "https://github.com/vriesdemichael/mm-mcp/releases/download/v0.2.0/mm-mcp_0.2.0_darwin_amd64.tar.gz"
      sha256 "4e957353f79121abe2863fa73d18adc758c2ad36572c26cd7bfec1c5848aba54"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vriesdemichael/mm-mcp/releases/download/v0.2.0/mm-mcp_0.2.0_linux_arm64.tar.gz"
      sha256 "06886735ce84a10047e930eb97b2ce8c7b55cd0cce1f4a435ca2abb152e5ca68"
    end
    on_intel do
      url "https://github.com/vriesdemichael/mm-mcp/releases/download/v0.2.0/mm-mcp_0.2.0_linux_amd64.tar.gz"
      sha256 "e37e8f62cf1f584b5f1877cd18ae845f1b5be96474cd0d2c64230ff4244af31e"
    end
  end

  def install
    bin.install "mm-mcp"
  end

  test do
    assert_match "mm-mcp v#{version}", shell_output("#{bin}/mm-mcp version")
  end
end
