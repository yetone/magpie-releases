class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3922/magpie-cli-darwin-arm64"
      sha256 "d0f22801dd17e438d520fbff63df0bdeed7c60a76e5311f1c51c4d8c1e7b4acd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3922/magpie-cli-darwin-amd64"
      sha256 "ee14ff9a1bb73eaf8a7f83ab5a10962a8030a5f721c3f27c9c4c6a0691612831"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3922/magpie-cli-linux-arm64"
      sha256 "2e5216cee51ac1f80d124a07c95375265bf4d22e466e1ddd9510b72e90877749"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3922/magpie-cli-linux-amd64"
      sha256 "fc0e9e6815800d16acac3e6db6256d6cf8e01a4ca225d229d5f2576281e854ff"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
