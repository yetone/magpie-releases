class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2980/magpie-cli-darwin-arm64"
      sha256 "b015d8bc5073ee8eebbc68e66496bfc5ef7371299016aee001561c390a39a634"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2980/magpie-cli-darwin-amd64"
      sha256 "63a4b3e41c7c66963db04e4e34844e81e4b40a5936ab9c2de909fde062eec522"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2980/magpie-cli-linux-arm64"
      sha256 "de41430b543226f81981436cff127ac071058537cd33a819fb708fdac4329914"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2980/magpie-cli-linux-amd64"
      sha256 "97d2ec6d8fedd193d92a5d3ffdc4ef8e2ad691dd2a288a38439b34dee5c39094"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
