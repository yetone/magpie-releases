class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1952/magpie-cli-darwin-arm64"
      sha256 "8f9743f3c9c271d02c89ad2f78a9d38b744bb86c712b531059a3ffed7eaef41a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1952/magpie-cli-darwin-amd64"
      sha256 "5edb8272dfb097f50edad4140b736bba55fec67d1385a0b59aea0ba55a004b1e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1952/magpie-cli-linux-arm64"
      sha256 "1ec6c799263217997195528f656e8c5ef3f9d2bf8c58c855309aa678fa0cb51f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1952/magpie-cli-linux-amd64"
      sha256 "9d43fa5961534fbf9abc124e318b4655fd8e75fac73712e2655eefb3d59a9628"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
