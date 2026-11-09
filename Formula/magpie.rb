class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3410/magpie-cli-darwin-arm64"
      sha256 "cf127c9e39fa27a535876b8e92ca1747160d3d3f75bd8a3ebc5a9a1da63ce7cf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3410/magpie-cli-darwin-amd64"
      sha256 "23641bd82a1ffddec44fceb5e8f87130dc62e1b21ae8f1508caf3c22a00992ba"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3410/magpie-cli-linux-arm64"
      sha256 "46be7b5eaabcd83e2eeb769f6ad639710e76b7ca55301f7743d59e671756964f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3410/magpie-cli-linux-amd64"
      sha256 "2f719ed68eede4aebab6ce3403dc7305426754fe081982a562e49691f38b8e0c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
