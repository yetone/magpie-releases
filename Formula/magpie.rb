class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4697/magpie-cli-darwin-arm64"
      sha256 "c3de56a7fd4bc9a37a5fe0ea2f91e93b7f2cd67bf4aff63813523a510109b167"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4697/magpie-cli-darwin-amd64"
      sha256 "63652664322db606ee2c0868e4f93c505bc97c3ddfa42cff57fe4bb0806fef24"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4697/magpie-cli-linux-arm64"
      sha256 "ab67894232c2fbb7f7bbc6b47fa3e9b54ec919f8130a96e43aace489d919d283"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4697/magpie-cli-linux-amd64"
      sha256 "bbcb817df8ce862d07485aa862e3c873767b16732421d6c4bf43f409dfda8811"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
