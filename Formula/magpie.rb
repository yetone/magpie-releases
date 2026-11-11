class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3713/magpie-cli-darwin-arm64"
      sha256 "e22822209b536277e70b175b19a6b5e138d8bbadf0a3df4175f76f9d5a0f9d92"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3713/magpie-cli-darwin-amd64"
      sha256 "5f4e14da292af311d8bdf33ac950ac54f76be689488b95a76f94957ab205dec4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3713/magpie-cli-linux-arm64"
      sha256 "3e6aa0d98b24dc7d06093a8f211d7b5109775127f32805772e3b72acb857e857"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3713/magpie-cli-linux-amd64"
      sha256 "eabe463aec6189aaec14ffe04858eb603333760ee181617c357dfcf48989840d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
