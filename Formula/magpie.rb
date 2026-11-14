class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4220/magpie-cli-darwin-arm64"
      sha256 "928c53b22b0ab920561ee2cb8722c5fd49cd1513a8a68bbada961eac851a85fb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4220/magpie-cli-darwin-amd64"
      sha256 "dbc3687f8cb7bea4cdeb96f546c79afa2244d964040c4b76f7f5f6bf9bdafe07"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4220/magpie-cli-linux-arm64"
      sha256 "e02b0d51fe29e798f287408f452b3aebd388f2fb474d35a7bf9a56c24b4186f8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4220/magpie-cli-linux-amd64"
      sha256 "77ec27fcb699a1001278b37a06589107dde0673b4595c0686db34ef31f04d36f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
