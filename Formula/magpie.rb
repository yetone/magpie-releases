class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4905/magpie-cli-darwin-arm64"
      sha256 "2f64f7c0e12a82920e365914aa3a8e03b8dc52ca4c4fae2a99e4421682823972"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4905/magpie-cli-darwin-amd64"
      sha256 "f375324a4df42373a9bb204ba9c6a545fc6b498b9ffdb6d441938b6a389fc51f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4905/magpie-cli-linux-arm64"
      sha256 "ca2962adc40169a955126978cda9331742454320c934df4953e06edccba27918"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4905/magpie-cli-linux-amd64"
      sha256 "6b864efa751717e86f2cd0112f2b665c0bb0ef183f660b208ce3677b3ac977c7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
