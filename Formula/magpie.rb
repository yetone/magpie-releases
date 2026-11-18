class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4500/magpie-cli-darwin-arm64"
      sha256 "a87d983dc2fbf4a7b464aef3d8fc1e3c8de13b595cac4da92147cf310f940d6e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4500/magpie-cli-darwin-amd64"
      sha256 "6a45fbd8f7340838bbff9988b95c0b7dc101357ff6c09b16bfb4a645437b9775"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4500/magpie-cli-linux-arm64"
      sha256 "b18f4267cc966bc682250db9738e265b153efb91874fa9b84ba2f8078f398566"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4500/magpie-cli-linux-amd64"
      sha256 "c5631bf7356e016c05bdb3c8be43e3f0a54fc8752cfea249cfebb0912f4a45aa"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
