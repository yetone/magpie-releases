class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4836/magpie-cli-darwin-arm64"
      sha256 "d0971f5e49ed6cd2c1f5539b319c776de475657811f352dd69b01cb8b92a361d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4836/magpie-cli-darwin-amd64"
      sha256 "9fe2cd2292657f2e7e2cc49f373adfa1250ddfc592ad80c3af99f9ab3ea3da1c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4836/magpie-cli-linux-arm64"
      sha256 "8313fc28d9421d3e92d0cefe8ee5b9576f5bb91946a0ddf9de16072b753e284e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4836/magpie-cli-linux-amd64"
      sha256 "2acddccca704de1b5afafe44d20d5910fd61948826349d2c82a6b2805f275c50"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
