class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3414/magpie-cli-darwin-arm64"
      sha256 "6ab73fbe1f339283a6e6a882269533d6ea129d8d10ab787bf46d21d8642f6992"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3414/magpie-cli-darwin-amd64"
      sha256 "2c7fe73e341d1c522e3a665238c6b3c4a29c931d29aee0a5d89ca78a23c72db0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3414/magpie-cli-linux-arm64"
      sha256 "982b5944ba49cf5b5320452ee292ea6d351791b7eb03e47a8b7e3b02d780fbd1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3414/magpie-cli-linux-amd64"
      sha256 "8442a37636093529a2fa2b270b6054330a5adb0f787f42f026da735eff09ca88"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
