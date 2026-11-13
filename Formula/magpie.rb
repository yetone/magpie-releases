class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3979/magpie-cli-darwin-arm64"
      sha256 "e636c8935db3ad0fb548679c346d197e0b3c79c9db2f5167c7e34d4d269648b4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3979/magpie-cli-darwin-amd64"
      sha256 "041c6971f528b8ae7b844e3003eb728fb36bf03814a0b629a52bb3543da2a696"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3979/magpie-cli-linux-arm64"
      sha256 "be137499336a5b9a6f1a66c24298f144f5e4b69449901f8fd0a06bc7c151a2ed"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3979/magpie-cli-linux-amd64"
      sha256 "67c37dafafc3ee084c197035a5af6bafcadd7102abbd5d8e4408f1fc9fcd22d6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
