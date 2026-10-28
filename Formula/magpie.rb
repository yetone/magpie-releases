class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1887/magpie-cli-darwin-arm64"
      sha256 "f672f700b77d1e18d9b2c0e8f68c28114a0c5b3840ac72d2f20fa4c053e8aa92"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1887/magpie-cli-darwin-amd64"
      sha256 "50f8937a39a784652eaa58b0bca58432b008abb15a13dcdc5b50d81af150b4a7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1887/magpie-cli-linux-arm64"
      sha256 "9779c727c11519bc485c3b827ae6f550b16010f5741a302052ae964157237834"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1887/magpie-cli-linux-amd64"
      sha256 "633780ae8c238bf9fd0e45d5252342f12a06b7c6ceff5753266246b6f3c3a8ef"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
