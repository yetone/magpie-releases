class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4245/magpie-cli-darwin-arm64"
      sha256 "334a9271c8508c997edd2dd971dffcf9a840604e24bbd2a8b28bc9d3616614ac"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4245/magpie-cli-darwin-amd64"
      sha256 "6f055b10a29525815ab8990c17a5c7d7dd01d5b35ae6705226592d3d1129a95a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4245/magpie-cli-linux-arm64"
      sha256 "d5456531fd7c2708637b13640d5c1d60ea156be4ac509c1bbe981a50f44ab19d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4245/magpie-cli-linux-amd64"
      sha256 "10eafc50119c6cb15dacf1b65b8150da847ba4815a8ba99f0828aa820f2847bf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
