class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2977/magpie-cli-darwin-arm64"
      sha256 "a512a3ac9f43b0dec2d36305ba8ed3a004374ff919ebb7d47aa96fa6725e0490"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2977/magpie-cli-darwin-amd64"
      sha256 "bcb216ee0955361a89495007b57324f8f6f64365a265e0e9426389c690920f6b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2977/magpie-cli-linux-arm64"
      sha256 "408e144feaacdd2bac1d08d949afe7f0bfd67f30b89ddec8f9145b7841f02ac8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2977/magpie-cli-linux-amd64"
      sha256 "fc91a797aefa132a6497b045766230594eedbbb0e976e7d6596145a618675955"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
