class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3046/magpie-cli-darwin-arm64"
      sha256 "abee5383f17518527ec475bb692ff0815f304ecbb0f691ccfd1140e308ba3bcc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3046/magpie-cli-darwin-amd64"
      sha256 "b1ca29d6af3f182eeb85dbaabe5adc1739a1fa5dc728a35a1b783a94f026dab4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3046/magpie-cli-linux-arm64"
      sha256 "bd2bb71e23c42ff9ccca5cca18daf66effeb4bf9de7865813fab14c9f7cdc01d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3046/magpie-cli-linux-amd64"
      sha256 "5dce15401374851ab40fdfa26f5f6eef2bceb8aae3cd0dd6f2b0ef24b9df3771"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
