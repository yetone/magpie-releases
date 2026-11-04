class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3001/magpie-cli-darwin-arm64"
      sha256 "ad5c75a378f754d9175b423872938b00d9ca529864d3d15188dc6d7b77ee26a7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3001/magpie-cli-darwin-amd64"
      sha256 "671a29a4183ade74ae5b99d2954067dac3630e445a33d31a4632379db9888280"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3001/magpie-cli-linux-arm64"
      sha256 "28998090af8b40b76e72c2311fd69554cfebeee36d7825fa8f5992a2a30db0bd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3001/magpie-cli-linux-amd64"
      sha256 "e08ef521e80a9db7c58387e1442699c8eabbec2ae1079d24922c567b637576c5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
