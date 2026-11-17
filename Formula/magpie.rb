class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4351/magpie-cli-darwin-arm64"
      sha256 "599a9bc1e486b72b6c6d20337011212192efe15bcf247a2d5f52e1a258aa0bff"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4351/magpie-cli-darwin-amd64"
      sha256 "6e3098e890d60265fc85bf9823eea83640e78d4e35310d8fbd0e4063245cf2f0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4351/magpie-cli-linux-arm64"
      sha256 "d6c4dd4c8574e4d8ff314907866b031bd81175cdf1080fae5dc6d4437b2c5eb1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4351/magpie-cli-linux-amd64"
      sha256 "898295ff1bb6853c65e0ea9ec3e012b2e08445ab2cab158cffbe6f7760d5788b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
