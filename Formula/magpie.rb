class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4748/magpie-cli-darwin-arm64"
      sha256 "a2775979e70d616b3e8055eb9cf5c96800fefdad018b2dcd218334cf1a58f2ac"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4748/magpie-cli-darwin-amd64"
      sha256 "a44168c618d30d31a05bd3b14f15fdf5ba4199b20d5830e67c6e816050c5e033"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4748/magpie-cli-linux-arm64"
      sha256 "58081de38c3eb57f3aa3f70d4dabaa9b2d94a47017607ad161cf216ea3c88188"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4748/magpie-cli-linux-amd64"
      sha256 "dfe483c7f17cebfecef94db5f6d94051d7620e371e18055cd7f5712513a6a236"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
