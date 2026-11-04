class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2913/magpie-cli-darwin-arm64"
      sha256 "7a7b1aed345e51f6c6fac9195a979277c5db9908a81dd0b998462133c3907bc7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2913/magpie-cli-darwin-amd64"
      sha256 "9866650309e7a4651c6fd5360503e5b80789ecbe6889481374bc2c281928eb67"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2913/magpie-cli-linux-arm64"
      sha256 "255f5f0c2646e30875fc26c7d84077054ffd286d83e25c064286b48f6f4a1ec1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2913/magpie-cli-linux-amd64"
      sha256 "29df63829823dc53fcd5f4e88be1e8897130461a7a08a6f5e2c366a594ca412d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
