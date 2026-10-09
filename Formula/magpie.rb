class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1130/magpie-cli-darwin-arm64"
      sha256 "8c0e934fcd024a4597c2373187d637474a6d1ed2e0f7fa9ece0d72a194a5f7da"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1130/magpie-cli-darwin-amd64"
      sha256 "c03f63c30142ce5940521525c1751c2e8e45c13ac72474293544ff8805cc6621"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1130/magpie-cli-linux-arm64"
      sha256 "26be873cfc727d8ee46e6bf2f556317426a64b2f07c72dc373e3e04477eda765"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1130/magpie-cli-linux-amd64"
      sha256 "0263dec2b3bdad90f49764c8ccaf96ad63371b87dc895b3a453251d7b52fbcad"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
