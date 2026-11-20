class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4620/magpie-cli-darwin-arm64"
      sha256 "71ba8b379375af60dea01b6d365edbd8dacbe03eb474fb6fbd0bc39c42052272"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4620/magpie-cli-darwin-amd64"
      sha256 "a8a399fb7cb02f9141dc400021b1d99e5b5b9aa9c9475766c9bda66aa1b94d69"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4620/magpie-cli-linux-arm64"
      sha256 "70653bc075d3ce0a82e356b07fe379ae552def3e2bdd66c95931ecc9e70d56ee"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4620/magpie-cli-linux-amd64"
      sha256 "ffdfb31b8a7962621ef71e5c90033acdd1f4ad206781d5e072a9134dff808778"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
