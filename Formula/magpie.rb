class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4130/magpie-cli-darwin-arm64"
      sha256 "4c8e812bd224cce36a5f245c734553224b4c89e79bd2ab0fd4db9a85f97e224e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4130/magpie-cli-darwin-amd64"
      sha256 "3e9ef3bbb750b6ae1263aef2f80545394cf4e4c83a9bcba55bbdcda46e0770b5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4130/magpie-cli-linux-arm64"
      sha256 "bef2c5dfaee90c71ae6163ea8d464cba8cc10d7b62adc4fa10cf4a4ce8777b60"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4130/magpie-cli-linux-amd64"
      sha256 "576199ef418e86eceafafa18bb5c193010ae038bb1728226e892985f63e64b26"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
