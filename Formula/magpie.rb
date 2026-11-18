class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4464/magpie-cli-darwin-arm64"
      sha256 "43013672ed355a960c090b394131197e3e25d5d42f804a1c822e456130ec2df2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4464/magpie-cli-darwin-amd64"
      sha256 "7ddae9726a5f79b00da9c8f54dadcefde1272ac79a1a9d9d6bc35f4e2ecdc55c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4464/magpie-cli-linux-arm64"
      sha256 "29e9a62f761a65abe90263120a06cab8aef98ef5d660259cf6ddb405ed977878"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4464/magpie-cli-linux-amd64"
      sha256 "2e63b0cd5ce84f7bd8507518cc592dea160ae9bfd77db93f111b4d41abcb9fcb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
