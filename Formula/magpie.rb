class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3728/magpie-cli-darwin-arm64"
      sha256 "03f51b326abe6925bea29ab57b146c6be60f0c97df2e3542b3b760ee1c4b9bf9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3728/magpie-cli-darwin-amd64"
      sha256 "acfa07d00829f7978369c1e6478c9b9eada538cf0af3f245d8316e13c96589a7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3728/magpie-cli-linux-arm64"
      sha256 "f17920cb44b82c52f58da391df87913a68f731e201dc9241e38f46b66d830fd5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3728/magpie-cli-linux-amd64"
      sha256 "3bea7c9282b1047ece71c79b641f603be1ab781da1e938a6c46b33342e90b421"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
