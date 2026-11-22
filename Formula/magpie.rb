class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4675/magpie-cli-darwin-arm64"
      sha256 "915cc654ab7c1fd9f9703cab4d2e851f1aa7d229e1baf6caa24c30a68615c785"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4675/magpie-cli-darwin-amd64"
      sha256 "86fdcaa2f32348d95f4b0814583393fd6ab709bfd7d958c4e3156c5b190bc2c9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4675/magpie-cli-linux-arm64"
      sha256 "beb27a2283c494a7e9457a388addb25f724334eaa4e43a61cb0dcf43171102c7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4675/magpie-cli-linux-amd64"
      sha256 "0f71c01cc0d551b7ef9ad3b801a6b31f8097b572671f2dfe62b2abde488e0ba7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
