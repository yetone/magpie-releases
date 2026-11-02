class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2733/magpie-cli-darwin-arm64"
      sha256 "e14f82c7dfd2bb587a50b4a79b84766f5ac425f9b00883af6e053ca2ff3df3d0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2733/magpie-cli-darwin-amd64"
      sha256 "9787790a98fe252b21e451cee75102051d4cd2edd4b964efd1b42aefd5f37617"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2733/magpie-cli-linux-arm64"
      sha256 "67bc7db9e17152ee71fe603127ddf0e6914bed19367edde1c08b18062e55a473"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2733/magpie-cli-linux-amd64"
      sha256 "29b98cf0f0b6fbc7c973a6165ef000d5a41f849576d005b43fbfb5291ac84702"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
