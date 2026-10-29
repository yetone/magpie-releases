class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2075/magpie-cli-darwin-arm64"
      sha256 "17a55a5b751c547dcba27cbec2596640ce000b054b5ddcb430b5057bc86f736e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2075/magpie-cli-darwin-amd64"
      sha256 "b025dd11e12487afa15fa44ce459f51dc2afb73fa751c84d16f0b69985d2af95"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2075/magpie-cli-linux-arm64"
      sha256 "a05cf5de2ac8b2dba082d0421b7d3667b66cb4f2c9bcba4b8b255b1401ab405e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2075/magpie-cli-linux-amd64"
      sha256 "8257ff5be3f9e14b46bbf70d1db2f1b3472e7b6f848770c30fef0496cf95c0ed"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
