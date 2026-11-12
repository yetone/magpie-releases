class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3822/magpie-cli-darwin-arm64"
      sha256 "8cd1061ea1047ecd964be78613f1c3397561682f9aa9cf9b41fd11a920a3c4d7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3822/magpie-cli-darwin-amd64"
      sha256 "b26e91ffc9c43139a53ce71a4e5da4911745f0f44aae3284f16cb41a3a8aa90a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3822/magpie-cli-linux-arm64"
      sha256 "2040368dcba18c3185493a496e8c4898a05892856ecfe6226e9c2ea1ee86f811"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3822/magpie-cli-linux-amd64"
      sha256 "621842c525e2f9e3833282fd4b9b6c41bdd2a0fadba562ee6df51ddd0ccba332"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
