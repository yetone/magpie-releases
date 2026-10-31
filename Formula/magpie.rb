class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2294/magpie-cli-darwin-arm64"
      sha256 "f6e996ddeb840a986090068426df0cd564591468fa7cc1101d8d7f73533bde6b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2294/magpie-cli-darwin-amd64"
      sha256 "e2bca64e9443c696c3d9aae6404f43d72cb184f24c9946f2a236558dbd09659e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2294/magpie-cli-linux-arm64"
      sha256 "37ec32b9d17ce26936f8b6552666c8bc9c32204853cc8bf3d5928bada7197749"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2294/magpie-cli-linux-amd64"
      sha256 "09a143c6aca56fdff0acb275adf2a0103b4875fd43eea2caec492238f6a082ca"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
