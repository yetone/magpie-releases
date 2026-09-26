class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.149/magpie-cli-darwin-arm64"
      sha256 "db07b00f3992cb2581dcc066d719af052218881c2e08ce46384f073e9adce0b0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.149/magpie-cli-darwin-amd64"
      sha256 "805fb2e59339a9171f7b40f6cb30d78b6c8833a0c1d9e6e2ce1760143270d8b7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.149/magpie-cli-linux-arm64"
      sha256 "df5982b18f417d82b317010a893fc0a9d615585063d381e7eb296d4b1cb302d7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.149/magpie-cli-linux-amd64"
      sha256 "9e1cdd364af7dbb1c84fabc06e2cdf4481e36aa2952e8580f97d45f2e96ad353"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
