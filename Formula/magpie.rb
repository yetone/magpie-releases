class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4061/magpie-cli-darwin-arm64"
      sha256 "5f58b030756aa1e1483bd4fabc78c72f976c6a018adf7089e3f355578ca62195"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4061/magpie-cli-darwin-amd64"
      sha256 "075d4fde73fba5725515ba2d4fc2f4e96cb1f5822aff5bcbbb6d437e69f5be3e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4061/magpie-cli-linux-arm64"
      sha256 "1de61bde3c41fe7af0039a0ce43d7b181bfb10c84ba8e45054b7085e01d74ed7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4061/magpie-cli-linux-amd64"
      sha256 "f3ef40a6372814e61fe550760ed3ce2c43448e8da4a8e37d7df81bb86ada48e8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
