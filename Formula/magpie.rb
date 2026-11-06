class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3185/magpie-cli-darwin-arm64"
      sha256 "a43dc06a3462e2420ec767c13eca707345294c2f84954eab7201ea61a0164ac1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3185/magpie-cli-darwin-amd64"
      sha256 "3ae513946bb1ef4355255d72e1151b74172ac0245ac0704e96cece26115038ae"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3185/magpie-cli-linux-arm64"
      sha256 "c39b06f71977b7989d6b0ba7174a397d0101d14003c2a638f9ca5405712c5634"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3185/magpie-cli-linux-amd64"
      sha256 "586590a41242924630c016ea82d3494c48ba963e1956e552a8830ec6dfd0c95a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
