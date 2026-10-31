class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2491/magpie-cli-darwin-arm64"
      sha256 "4f8d35193b6545ea2c980cfdb01a7aa4a8d5b085410c1d90650ce02386d7561b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2491/magpie-cli-darwin-amd64"
      sha256 "65e04363b1883230335bbc729b6e96caa0199623c406628c06f0424a0b91f16e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2491/magpie-cli-linux-arm64"
      sha256 "c91619fbd796ae219dd187dec443fe5e33a5817bf54f24c627f3ef6e83052ece"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2491/magpie-cli-linux-amd64"
      sha256 "7b82207b67c9963facd4a77c4c8f91cee79ac50ed192caa179c54e829e604db5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
