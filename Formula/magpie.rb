class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3353/magpie-cli-darwin-arm64"
      sha256 "956e09ddd14467e8131ace9a48582a64aa12c308497b5b92453bfb6b77a61904"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3353/magpie-cli-darwin-amd64"
      sha256 "0947f0cbdd01358e9475b473acd48f93e4eba12d6ccafc152bfe541e6a901260"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3353/magpie-cli-linux-arm64"
      sha256 "694b59d06bee2b62b952d327e981b061591990f0dccd5d703550563dd731841e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3353/magpie-cli-linux-amd64"
      sha256 "7ae273bfb86a586150b29b8a6d5ee56a10220bfe368cafdb386bf12bebe9d86e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
