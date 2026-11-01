class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2571/magpie-cli-darwin-arm64"
      sha256 "c9641d2bc9f8676773f7bd190d11b966a664884e72c10f37bca1cc53c6daf7e3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2571/magpie-cli-darwin-amd64"
      sha256 "aef46c425640dbec65b9288283a6f4868fb34e5e5b47883437460edfcb0549ba"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2571/magpie-cli-linux-arm64"
      sha256 "53916a4480eab9ff11a3330902f310c7042d02b5647c89555970198c363d4ec9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2571/magpie-cli-linux-amd64"
      sha256 "dfc2f6741804667785fd3de59c6c9f89789d873f8288cf3103ddf147b89be30b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
