class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4955/magpie-cli-darwin-arm64"
      sha256 "937b2b6cf8571105f535c47165bd75ba625ec30fa5598f1de3eb49d35c4f7b1a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4955/magpie-cli-darwin-amd64"
      sha256 "afe4f61de46f1638c0d20b369c623bfc701073a16e24f847e57d1996321c9638"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4955/magpie-cli-linux-arm64"
      sha256 "c8803b17680fcdc8498acdb51a2455dc463cafde912b98cd0f0ffcad4a06a8e1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4955/magpie-cli-linux-amd64"
      sha256 "1de6806b1190aed9083a2d5e06848b5af9704b4a97e00b222b11cdb4b830a57f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
