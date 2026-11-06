class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3174/magpie-cli-darwin-arm64"
      sha256 "d93c5f111c26ee2836d597f2a53ae77ae6e27ee90ac2592e4195954c874743b7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3174/magpie-cli-darwin-amd64"
      sha256 "45a0310d5f96e00f851a6692f7cf89a1ff55223479c18f740e65f572eb8e6152"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3174/magpie-cli-linux-arm64"
      sha256 "2f6273cadf399f265f869a29c32f433c0780d08e06c86690b29187f1be907eaa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3174/magpie-cli-linux-amd64"
      sha256 "ebc164ca25a3673cacef1b41c031fbb918aa32eedae9991be2bcd3d0d70dac94"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
