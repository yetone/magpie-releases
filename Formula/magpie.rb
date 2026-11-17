class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4396/magpie-cli-darwin-arm64"
      sha256 "f0b3bcf002020139e16a70c6ddfce4d854c2abb73efc4993426b317aeddcff34"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4396/magpie-cli-darwin-amd64"
      sha256 "c6c9f4c74c7cd432af2fd2334b3b579e101ebc182f20036a629b70cbbc0c0cd8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4396/magpie-cli-linux-arm64"
      sha256 "4c401013e5fd5f5f6f23aebc2868b4aae952be9e82f65499f7401733f2a072f2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4396/magpie-cli-linux-amd64"
      sha256 "bd29584da2573e217b0cbde7c58fc690fc84f4ea448480c267fcbcf8706b6a96"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
