class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3556/magpie-cli-darwin-arm64"
      sha256 "35e0fa0913c63d263000e16f93427a27665e27afdda9fd25ce2adedfa21ab013"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3556/magpie-cli-darwin-amd64"
      sha256 "374aeacf9f4eace1c3ed83e113390e59038dc9b26ff8a711ac46628595962adf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3556/magpie-cli-linux-arm64"
      sha256 "93c2a9ea27bd1dde9598407743e897f1951b201e41010cc70e628d3155f3aed4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3556/magpie-cli-linux-amd64"
      sha256 "abd7eda10d58f489259bbaa0a7d2554710f68067fd865329a58c0baddb5ec2ff"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
