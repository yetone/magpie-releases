class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4369/magpie-cli-darwin-arm64"
      sha256 "4405ba656c66dd634061c2a5c042ae2945faeb734a0a4352219af0257362dff6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4369/magpie-cli-darwin-amd64"
      sha256 "d2e126bc3d9fcd0ed62fca44259e8a550ba387b9718ea8af21461ab4f5203a28"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4369/magpie-cli-linux-arm64"
      sha256 "922219c8854c9c9d4579b8dccaa82f6cac4714199e3dab564ef044873e9a57e4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4369/magpie-cli-linux-amd64"
      sha256 "fbb1a9c9ff090325d01a2dcdd0e71efa505c06de01a8a8270bb1cae1ab0fcaa5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
