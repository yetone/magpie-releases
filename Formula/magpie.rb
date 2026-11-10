class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3557/magpie-cli-darwin-arm64"
      sha256 "8cfdde52800b897df7b867369f9919c9dda9e43dec0c204ad83dc6933117b1d8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3557/magpie-cli-darwin-amd64"
      sha256 "6d1f4513a7cb18218e3a789d57747d2de50d34cbfe5a7b70a333ab3c1e941940"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3557/magpie-cli-linux-arm64"
      sha256 "725b88db03e09c1f701eebfb1e5fa8e6403afd3a0b5ec84df381c8c2cb2a6d01"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3557/magpie-cli-linux-amd64"
      sha256 "dd99d525fed2ed7eb2a5652ca14638f38a7c5ded69ef1bb54433a5c0a061ed84"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
