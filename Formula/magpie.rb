class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4399/magpie-cli-darwin-arm64"
      sha256 "d531bb180b499ad87f492efa812ebc6a451a7cef0f1bbd5cb3b6d3c6431d143c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4399/magpie-cli-darwin-amd64"
      sha256 "1b15aaf33602edaf10ed11410558700c2f00d45174fda9b10e3127d854ce29a2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4399/magpie-cli-linux-arm64"
      sha256 "e4108bf0c4e129d9f5745ad42810ebc17ab05d247bbe5df862ff806ba2fd3755"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4399/magpie-cli-linux-amd64"
      sha256 "3bcc4ad4a7ba62c2b4725a5aa34b2c9c46959d1c5efdd633f4b042af8adbf08a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
