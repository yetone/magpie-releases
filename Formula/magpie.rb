class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3923/magpie-cli-darwin-arm64"
      sha256 "abf1a3c0d02e4c19ddced412bda7c9bf178f929986c1e5070feb11e68b320954"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3923/magpie-cli-darwin-amd64"
      sha256 "499b7c27b0bc180697f9c1e98f3fb7eccf12ec018579954df8810c7faa60b686"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3923/magpie-cli-linux-arm64"
      sha256 "c16df2e2769412932804979f36ff44499ff573d8145769bdaa4044131df2a6dc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3923/magpie-cli-linux-amd64"
      sha256 "d2e44909e8e84c785a3221b80a3e1a02fcd858792df8d0131cf5c55f936112b4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
