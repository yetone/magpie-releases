class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2691/magpie-cli-darwin-arm64"
      sha256 "9791e3596297d57da53d7605e4d54fc98dddc9cd6e3b4afdab8ed1e4ae5c97b7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2691/magpie-cli-darwin-amd64"
      sha256 "7a0ccf378b05be8ce0f508a034e3262736e771c09c0be81a7361d2bcc533adf8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2691/magpie-cli-linux-arm64"
      sha256 "7f59fa4daacd4199fe6474c0ae029601b1c1e7c3f34f6507b89e3339b58c0b76"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2691/magpie-cli-linux-amd64"
      sha256 "9029eae260a506675e0c72bc47e572dbd2fabfc4f4109a0dca4e1db68fa7921c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
