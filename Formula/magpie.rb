class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2834/magpie-cli-darwin-arm64"
      sha256 "a74eccc78951187783fda03762bfb17aa7e2179059fd2890cd8c0ef6f56bd266"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2834/magpie-cli-darwin-amd64"
      sha256 "9976cbe300c7dc54ab8abf88929519ef1ee44e9b480ac0739b7a812722f271b1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2834/magpie-cli-linux-arm64"
      sha256 "33dedc876346d39f96241ccba2d0161b936a6bdf0d33d373a2609ad987a74210"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2834/magpie-cli-linux-amd64"
      sha256 "de2d12b0066947c3fafa2f44d4f56b9f01f856b2fb9b921a67d82530f95d88bd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
