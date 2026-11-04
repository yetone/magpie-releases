class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2892/magpie-cli-darwin-arm64"
      sha256 "1f93b554b68c5d9536b2717737a935f1870ea9e9d2b62a3edb39f9f97ca01179"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2892/magpie-cli-darwin-amd64"
      sha256 "ce49c7edc0af5be2e57e36fc2232d2dffccac04ccdf4821c359c75ad031c2403"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2892/magpie-cli-linux-arm64"
      sha256 "5a7c7468d56584fc9ce94a696c5c4eb055d58d71f461a5060bff98e5749221dc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2892/magpie-cli-linux-amd64"
      sha256 "0445f78af58ba3cb1039bb8b68a804419810f7a541441c52475013f48e7faa1a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
