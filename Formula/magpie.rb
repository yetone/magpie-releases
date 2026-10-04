class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.925/magpie-cli-darwin-arm64"
      sha256 "13123334e2e2fb10ace2f877bc7bde11cb7dd9f477d1a8bdf0dfa001663a3c21"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.925/magpie-cli-darwin-amd64"
      sha256 "e14aa6d4e42951e1bc14aa89c1d5911c5bf0e8c5b7e384669883b53511526f83"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.925/magpie-cli-linux-arm64"
      sha256 "61aed4fab1bab00e3282e27a67c8c1b10c93accac1bae8474172f3ddfe51f56e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.925/magpie-cli-linux-amd64"
      sha256 "d5b2a2bf7ced31fe03a56d727e04b40003d2bc133497337dec6c4936f4e46609"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
