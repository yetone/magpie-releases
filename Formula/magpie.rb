class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2262/magpie-cli-darwin-arm64"
      sha256 "d92a66049952ad419698f0d8bff4f7b0b38d0fc35161ff137c813bc4b2160cc4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2262/magpie-cli-darwin-amd64"
      sha256 "80ba15af06da43ed1bad390afea09fa310d44933a26b05f0ff529d44696b5aab"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2262/magpie-cli-linux-arm64"
      sha256 "668adb98c2ccc78c9aac00775c8d9aefb4dc0cb6f21fae5449a6c2614d2df356"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2262/magpie-cli-linux-amd64"
      sha256 "b0f63202380cecbb27687b07d3d73510a46b5a7ed06517d97141dfa268c1aaa5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
