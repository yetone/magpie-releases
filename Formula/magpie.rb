class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1875/magpie-cli-darwin-arm64"
      sha256 "209ed59e2841795042a2319689c86fb66bfe9bb3fe630edbfa6e5e8489455376"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1875/magpie-cli-darwin-amd64"
      sha256 "6a42e97f3d868852e79ffc630a297543b6878083ae2e75d51a69118adcd61c95"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1875/magpie-cli-linux-arm64"
      sha256 "817dd2764830267dd129b23476a0ce2d99dad29195e954037f33cca48cb0fb86"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1875/magpie-cli-linux-amd64"
      sha256 "759dec32ab11536ad4e835d77cde728d39352ca2cca86ea6bca85042511b7a34"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
