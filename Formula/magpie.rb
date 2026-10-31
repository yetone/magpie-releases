class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2406/magpie-cli-darwin-arm64"
      sha256 "0b31c8f3c6f9d87c3d046ced1a62edd6beb943fd05d1d301f6e506e8293243a4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2406/magpie-cli-darwin-amd64"
      sha256 "f52701d2a85420831561706299f6f2c03d8c89e2b2467abf16aa8607cacbbdf2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2406/magpie-cli-linux-arm64"
      sha256 "2f2f5cd74c5e02650b476a71f4e5ebb7919198d40b42641d113896336e6583c7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2406/magpie-cli-linux-amd64"
      sha256 "8e8150fa37565ce99fd32ea451b1e6b58b8496ea4bbb878248d5236f819e4176"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
