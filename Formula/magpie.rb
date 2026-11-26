class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4848/magpie-cli-darwin-arm64"
      sha256 "688dc8f0dcbc3239cb1a99e554662558e2e19827b27c3c0352cebc6eef8622e1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4848/magpie-cli-darwin-amd64"
      sha256 "a2713329c0ba2c748bef7de732cf6bc0c9054ca2548a0d5b186258968a331dfc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4848/magpie-cli-linux-arm64"
      sha256 "880f0c04f5115ce06f1fc9648026d040af1d946ab4e86df2243cb346cc15ab0a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4848/magpie-cli-linux-amd64"
      sha256 "3645a4679c37f45d2a9ae74003fba88a71a766a1dcd33b4e1aa0333f6faa679d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
