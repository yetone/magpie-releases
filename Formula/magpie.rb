class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4808/magpie-cli-darwin-arm64"
      sha256 "8965d06ff326a9f10bd263f4546b00d25eec2f3b15dbb378cce7b142e5f17279"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4808/magpie-cli-darwin-amd64"
      sha256 "ddf13e894bd6a6629a4fd0605e2eee112537e434a6d871a1466897d2566e6578"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4808/magpie-cli-linux-arm64"
      sha256 "a0c8a44ae4c9da53b3aa268183f33a6859767b2530bd59b5064d794222f8b6ad"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4808/magpie-cli-linux-amd64"
      sha256 "8b98f1bf8dc85cff779664b6b619d2a812d0243049f92b3a590454641c3e0327"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
