class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2735/magpie-cli-darwin-arm64"
      sha256 "79d8cbf966036ee22922b5db57a10b39db2b0ded97775ae4100fc482ae336c90"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2735/magpie-cli-darwin-amd64"
      sha256 "86af392633fccc9591f7b56b19ff0314ee8c8285b787ef8d3089a7ff657ac216"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2735/magpie-cli-linux-arm64"
      sha256 "e2facba557acb2c9c2ac1e1fdc47d19ade58266404a4b5dc65b6d5a7dfc56c41"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2735/magpie-cli-linux-amd64"
      sha256 "f153e572423b42a021eb8d7ed5f7c949c1eb6484a9ea03c1ca9861c8eff1f76a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
