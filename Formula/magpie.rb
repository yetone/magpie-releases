class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2560/magpie-cli-darwin-arm64"
      sha256 "f3d6955489f8b64cd704a6c4a51c494097f934a62afcecc6bec3680ee4339ab3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2560/magpie-cli-darwin-amd64"
      sha256 "076dc2bcb5e28dfe01bb848c7b5239dc9c0a25329213a98c491976d5af3a5975"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2560/magpie-cli-linux-arm64"
      sha256 "ef51d815070725e3f218c2dff307bac1470e259d3e35624f5dfc73d9067754bc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2560/magpie-cli-linux-amd64"
      sha256 "a9b142efa1ae89288c5b29dabf148bb809833a95b5e451798ffa07c397e360e1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
