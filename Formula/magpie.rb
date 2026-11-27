class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4950/magpie-cli-darwin-arm64"
      sha256 "4331d9ccde670783c7d48b85fd80ab428a412a3306c23351140627aa0c0852e4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4950/magpie-cli-darwin-amd64"
      sha256 "e7edca6bb2e14aa6f84b3fe4aa7e266948a0d8d2f77ed85cb673c51c3ad94dba"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4950/magpie-cli-linux-arm64"
      sha256 "655898d3617d6786209b472dad08709a6499e7b3b9092064f6269c77b0a8cb08"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4950/magpie-cli-linux-amd64"
      sha256 "998dd1cb335443a5f1d6326c2f67013e9ea6a974538b7a32c7c50c9ca25b5b48"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
