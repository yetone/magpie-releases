class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4613/magpie-cli-darwin-arm64"
      sha256 "791a9c61fd6504d0a3d3a4da87fd3ab88e9f57673c332464bddbd8955863898a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4613/magpie-cli-darwin-amd64"
      sha256 "d14c1f04b8dc6dd899576069982a8cecde800e7ea8cdfd592ee12d4cd169e30d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4613/magpie-cli-linux-arm64"
      sha256 "ef4b6330279a05753cf7e3282274a44cf1ba5b19d41c9842e11d417fabb25701"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4613/magpie-cli-linux-amd64"
      sha256 "8586cc134a23f4b6d56b6b95e5e93ccbdad153064f3fd71e9b8fe204e77a6626"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
