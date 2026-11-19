class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4530/magpie-cli-darwin-arm64"
      sha256 "66dfd341899dd239f2340be235f9f21505d0cd184c07e0eccadc67b0f407e3f6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4530/magpie-cli-darwin-amd64"
      sha256 "63eb4c5395906791589b9444a16f0cd78b97b8035ff743c56a4d44d122e3375c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4530/magpie-cli-linux-arm64"
      sha256 "21b466e00ffd2536974183667b02b73b49c631605833901d77959f7fa1402f46"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4530/magpie-cli-linux-amd64"
      sha256 "969a898e394424440c693bdb871012bf5735a4e7060f0db9ce0ddb5372597962"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
