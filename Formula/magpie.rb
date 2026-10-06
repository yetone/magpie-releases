class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1095/magpie-cli-darwin-arm64"
      sha256 "0a26218cbbf70782bbd8eca8becc0a25c754ec13def7c46aba068ada4976ae09"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1095/magpie-cli-darwin-amd64"
      sha256 "4dd1b776d7fd378fdb44730444d0326d426393709f5ea2317813edf334bc1848"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1095/magpie-cli-linux-arm64"
      sha256 "6545424ba97fc282aa7d6ea0f5303a66a193d148e60a61a00bdb53edc14fecca"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1095/magpie-cli-linux-amd64"
      sha256 "a3ab907b05c5140d7967230d09c6041c0744a98f8cdb5a7d4fde4062dd563b71"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
