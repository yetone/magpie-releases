class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2061/magpie-cli-darwin-arm64"
      sha256 "17a612449638f7b96cca438f51bf1d8f5d8204d5d1525d3b3424e22b24f4dbf7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2061/magpie-cli-darwin-amd64"
      sha256 "182c1dd9e9372e9629016b7041adab56b96cb4f2b79d23daa8cb777aaf2f394f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2061/magpie-cli-linux-arm64"
      sha256 "2be3444d9ce3f1824e108820f1d41896a3d28d0c09e740a2a390180389e46ccd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2061/magpie-cli-linux-amd64"
      sha256 "ad08d640d46dbca0428820f57914a98bdeebb86c5aa08af90f4d03cadb813395"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
