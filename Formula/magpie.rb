class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4725/magpie-cli-darwin-arm64"
      sha256 "84dbaf04f65cf2ec2c72495d5bcbcbdc49a0a8dedae1d2d25d10a0f1556d4e5b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4725/magpie-cli-darwin-amd64"
      sha256 "1cfa5430e1c8ad29545e868d94304da0ccee36016943aabc82138bcab74ebef4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4725/magpie-cli-linux-arm64"
      sha256 "b7508593ee15853bde13e6ff065203484fe70abb5dacadf92e4b3814512cab5c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4725/magpie-cli-linux-amd64"
      sha256 "9b7a176264691746cc9e74c5e1fbdb6be7d8e231029e8335badbc01070e12c13"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
