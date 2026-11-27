class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4977/magpie-cli-darwin-arm64"
      sha256 "53ad374930584029176a5188b4bdf34d17df810da9e4891807ab1467352bca17"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4977/magpie-cli-darwin-amd64"
      sha256 "0e74c5925ae6acd7e1459b877eacaa06f31b778cc1bda7d5f1c6767986089d9f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4977/magpie-cli-linux-arm64"
      sha256 "945e592a814e355783199fc9fe7e403499378e09c3db5794ee7a8255defc58f4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4977/magpie-cli-linux-amd64"
      sha256 "4dd81f01230fad136e44cd8bdc6efd151ff2f41ead9c804034533a6b89ea60b2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
