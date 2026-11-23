class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4723/magpie-cli-darwin-arm64"
      sha256 "d8944556401ae225f315f0f05a976bb4120ffa967951ff87eff69eda9e612f26"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4723/magpie-cli-darwin-amd64"
      sha256 "c2d283a90e5fd9162ad8e5be2168038e8ee3c3833126c6f425e28c6b15c89ce2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4723/magpie-cli-linux-arm64"
      sha256 "036adb3103f38e6dcb473f224f4e95aead0ff03cc56a7130cb77837edc44f887"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4723/magpie-cli-linux-amd64"
      sha256 "57db71246f9555c8af630af5a550078ef63bb0e111a27128bf9cb919df349ed6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
