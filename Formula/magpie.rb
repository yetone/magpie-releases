class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4192/magpie-cli-darwin-arm64"
      sha256 "1463047bc79d4632445db77f33742bb3e56eb0c29168dd04e3b4b8295d4c822b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4192/magpie-cli-darwin-amd64"
      sha256 "8e5bade79a3f249db940b50a7f8828ebb8a57733cc16ec7f17cc3a252e11e5e3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4192/magpie-cli-linux-arm64"
      sha256 "f62ddd32daf662d2f53fa8f38a4a2c2c4112b4fb34890dc76d00a3c21ecd3d9e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4192/magpie-cli-linux-amd64"
      sha256 "c01db997bd633b21167ef22eb0c74bef3c9711f257d181a759ce4147d553cebe"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
