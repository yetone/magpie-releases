class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1043/magpie-cli-darwin-arm64"
      sha256 "e7f431b4f768693b52f288f2d55fa858e8a3776340ec12df5de27a4c494274d7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1043/magpie-cli-darwin-amd64"
      sha256 "0320c246cf9cae90ab23f2dd0b32f8b8a8fc86a3b572e4d481c8281efbed1075"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1043/magpie-cli-linux-arm64"
      sha256 "7441121b71e10f40cc07f7f13430164a28cf01285c47d49172255d6419196033"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1043/magpie-cli-linux-amd64"
      sha256 "f521d1c8157999d0822fa31e33317784e1f426bdb3ddb24ad94c802fb925bf78"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
