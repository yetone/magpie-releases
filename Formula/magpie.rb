class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4062/magpie-cli-darwin-arm64"
      sha256 "4eb657fabebebefda9680d9cf2a4ee43efe1b238afc509930949baceb7102f6f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4062/magpie-cli-darwin-amd64"
      sha256 "34a1ab119c42acc8d9b8111f300cf9669dd1931b8c29092592ba43b632fc3041"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4062/magpie-cli-linux-arm64"
      sha256 "aeeeddf4f3e729983284e4535e58cd0c78215fd5637b94f654dafb11fe962bac"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4062/magpie-cli-linux-amd64"
      sha256 "6a86c08a53742ba5c1f6ae23bb540ccb7fd5106df398022d043a045b4803bbb6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
