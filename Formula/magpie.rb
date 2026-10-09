class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1129/magpie-cli-darwin-arm64"
      sha256 "d52c266a9f1c3aee01c182685c30e0ba8c6e99ce88ac880565274070bed54ab7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1129/magpie-cli-darwin-amd64"
      sha256 "c079b4f359740de60dc47ea446abf2114f44acd16be884fb19c073a9304713f3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1129/magpie-cli-linux-arm64"
      sha256 "748204542e76658e3627c78d3a17f6521a41e1324d450cc47f606ffcf1dd6608"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1129/magpie-cli-linux-amd64"
      sha256 "24927733341ec2fd45649e4b2c90d0a46c0f31cc485836bc6ef5ca2f73e770fe"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
