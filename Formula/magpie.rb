class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3432/magpie-cli-darwin-arm64"
      sha256 "9c10ebf7d2b7ff5a1d949aa51c523f650c68aaefd0fab0d2dce6c87b2f3fa325"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3432/magpie-cli-darwin-amd64"
      sha256 "7e92eae49b445d0ed41d18dca0acece502b13adafeb7a3e1c2580682fb3bb7a5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3432/magpie-cli-linux-arm64"
      sha256 "64668a9d6fc3084117081fafb6a289229945ac968c3765d912525f3f8c8fdf38"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3432/magpie-cli-linux-amd64"
      sha256 "18d2a206d79864749c2798f3139efb82ba63a17e86fb92675b6f82b7122f24ba"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
