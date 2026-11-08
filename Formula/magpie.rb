class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3329/magpie-cli-darwin-arm64"
      sha256 "abaf6b2a74a41a5df82d3a189e80d6b07021d0fe22b0af7a704d117a537cd69b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3329/magpie-cli-darwin-amd64"
      sha256 "7f5ca6a5427ac45fdc8abce9a5924d20c1dde92b3c0399736ff9120e954c551c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3329/magpie-cli-linux-arm64"
      sha256 "992a1a33c1a80646b703b0374b607f07a59ed38f851823ddb2c8e9c8f12bc3c4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3329/magpie-cli-linux-amd64"
      sha256 "f5d7bfcaa8d3b9178581e79893c05d9f61b2e8bb5fe207d1f11c4768a4005468"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
