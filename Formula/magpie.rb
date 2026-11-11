class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3782/magpie-cli-darwin-arm64"
      sha256 "78bab278b6e12707f718d7384c6ae122aae9995e1c213c801835aff0bab91b06"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3782/magpie-cli-darwin-amd64"
      sha256 "d5a007f9cdc9f60c2389509c173bc93a9c996db971815b53036f0ab0e2b12e2f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3782/magpie-cli-linux-arm64"
      sha256 "5abf448a99342af1537b778b86e627090f87c227d601b5384568be1a66242f00"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3782/magpie-cli-linux-amd64"
      sha256 "50bd188f54aea03961f2f6d16bfe28969d3fde453b42ba30bedfbbd6472aa575"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
