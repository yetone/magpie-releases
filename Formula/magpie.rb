class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3195/magpie-cli-darwin-arm64"
      sha256 "f0f743b3d4ab40caa32bd1059e096cefd86f32b2cdf56212c0f09306aa734583"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3195/magpie-cli-darwin-amd64"
      sha256 "b4de983abccf9e2da09442ce0ea481ca78e74ebb8dea1ad88c4edf47f4b79903"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3195/magpie-cli-linux-arm64"
      sha256 "4a0691c23ca0bcbf7d797910215f39d78c2727d6acd319b661422c44ea1e3018"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3195/magpie-cli-linux-amd64"
      sha256 "507ba7a8b38624db4b7f8fc51e25f5f327e650e7423f70f0cb195639c903fba0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
