class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2646/magpie-cli-darwin-arm64"
      sha256 "0f8b1f638031f9f04dfe48ba3b9137185db6ad0add471bfa4f610f1be91451e0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2646/magpie-cli-darwin-amd64"
      sha256 "cfb6e3cf2c1f6ab1b8fbcb6bd4977dbc241b90ad20bfd7f08fbdd337a427119f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2646/magpie-cli-linux-arm64"
      sha256 "79e0cc07dd7022957219ddb3cbe724427733b20ec6364c1f1c9a7f5fce675f16"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2646/magpie-cli-linux-amd64"
      sha256 "4e6ccf9d807ab38bc13b3a18353443d5475c135d2d84ce9737495e0d51dcb4d9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
