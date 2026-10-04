class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.913/magpie-cli-darwin-arm64"
      sha256 "2686192890af35aeb18704a75b34b0f5c30ce71d36ff08487fa260f3ad5b5ec9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.913/magpie-cli-darwin-amd64"
      sha256 "d1984ded17ee94b91f7dac6c0c9f26165cf7da28147622056957af0316f43339"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.913/magpie-cli-linux-arm64"
      sha256 "2a3d4219c4a3141027ea85f328304f55fc218b305f29215743c7649cb7bff6bc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.913/magpie-cli-linux-amd64"
      sha256 "9e29f6c2c60d4d4b79960ed03ee12df8a85110e80bffeaf9593ad522a843d065"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
