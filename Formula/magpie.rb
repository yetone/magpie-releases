class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2666/magpie-cli-darwin-arm64"
      sha256 "244fdcde4f2a4bcc6f056c3767e521c6017d047b7358636f8655499263a72e0c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2666/magpie-cli-darwin-amd64"
      sha256 "19850257811d230c3e70a1ce934b29f86c38b589dbf3669c622d6d8db3286741"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2666/magpie-cli-linux-arm64"
      sha256 "5f0b129a39cbe33cde397038fbbecabe42d2dc8628c85e0410e30fe20102e5e6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2666/magpie-cli-linux-amd64"
      sha256 "6ef6ae002e260b1160a8b0047a7e6bbe93a8abc4f53e41d909681360c2815a4f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
