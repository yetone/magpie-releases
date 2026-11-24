class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4752/magpie-cli-darwin-arm64"
      sha256 "488fa27ef6a24f96c391a5995244ea413b436b5ba45af0a842af3fd5d41fc8d0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4752/magpie-cli-darwin-amd64"
      sha256 "ce30ed7e8746426cc34c684abf50bad03b6d5847dedc89316255e7ba062e5874"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4752/magpie-cli-linux-arm64"
      sha256 "b900865ee26d7d650f38bf99b91d8cdf638f6f4ef3a0ae58842b7ac521ea7b38"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4752/magpie-cli-linux-amd64"
      sha256 "aab2af1907063f936b367ef4887c4373e74e4e02e4ee2fa956e21c00a50481a4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
