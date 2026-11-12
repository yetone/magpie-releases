class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3935/magpie-cli-darwin-arm64"
      sha256 "a1e4a3c539604837211db30f6cfdcbb037d3a9947ba6524f76c8378870bc7379"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3935/magpie-cli-darwin-amd64"
      sha256 "d0151c51c6722ae1474ca07208f84719038f02a7e9a988fc1f0dd276e9840f91"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3935/magpie-cli-linux-arm64"
      sha256 "96a66773d62c761b975e7be1e27d51b8c2a9b539fe5bde76b9f5ce0625458879"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3935/magpie-cli-linux-amd64"
      sha256 "8e40c98089b228c782f7b6934981f7d90e5aaa03133b8705e2cc1c1d36efa61a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
