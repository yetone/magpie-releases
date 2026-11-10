class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3489/magpie-cli-darwin-arm64"
      sha256 "e5d15717b8352cd0fa6314509e50dac3ce869d7a7d8cd7d11d1e90773134f8ce"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3489/magpie-cli-darwin-amd64"
      sha256 "dbc8e56830396c25f5287474d9ddfb5e0a0199418f0ce417b1a97bb13b029ee7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3489/magpie-cli-linux-arm64"
      sha256 "7c63b1268f625ea2550a0e5e2b8c3c19429299e42b1db0a8d22496ef30f61149"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3489/magpie-cli-linux-amd64"
      sha256 "f1b3b60b598ac33008d90043c900d8db16aa07f05d0a30e349ccd056b5a86aa8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
