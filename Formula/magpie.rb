class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1924/magpie-cli-darwin-arm64"
      sha256 "d9ee285f358716c6c591f755bdd262d397044dea578f6a95c9b4841253999cd5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1924/magpie-cli-darwin-amd64"
      sha256 "6874ac93d4f83c0c50637a1ecbaa33416df5c19b96078a2b791faa4c593087ff"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1924/magpie-cli-linux-arm64"
      sha256 "60037e350d9c25774bab04254f2a51a7194273d3ac28bc6474e6b9d642a675c2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1924/magpie-cli-linux-amd64"
      sha256 "8f3afda4f89b459d6fa4a8357e3c994841f8e707617d361812b3597cab089438"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
