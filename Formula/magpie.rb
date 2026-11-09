class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3416/magpie-cli-darwin-arm64"
      sha256 "b9d46442ebf52ff4aacdded08d06ac020157ddce37a6ee5a2ec7c76842628a1a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3416/magpie-cli-darwin-amd64"
      sha256 "14a580b7cbf6c8d099eab27bccfaa182b0c95685c6651969a574d9b5f9b61d8b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3416/magpie-cli-linux-arm64"
      sha256 "04fbe9c576854e98683990d8aa0c6f8353d8d2d3c69c21c855fb98572d31c48c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3416/magpie-cli-linux-amd64"
      sha256 "dc317dbb2f19785efdbdaa5eac39b350a7ccb84baa36f91422286ea905d0e82a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
