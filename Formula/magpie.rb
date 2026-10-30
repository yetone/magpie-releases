class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2209/magpie-cli-darwin-arm64"
      sha256 "90d082daf2a0d1f1037a90cecc865ab71470b9b6eab0ba02dfca675ab1b1699a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2209/magpie-cli-darwin-amd64"
      sha256 "be3bb53cf423487fa36aeb54b7932a291cfd009e24c346f449352610da09e7ae"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2209/magpie-cli-linux-arm64"
      sha256 "33315b90775c7e8602ed6bf195f86b4afdaaf54fd8c95f3f5abd706efdf686ac"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2209/magpie-cli-linux-amd64"
      sha256 "c765f64961c263d007d9ecf7fe351ff4fb27dddcee4f5c7eb213a40b96a5f14e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
