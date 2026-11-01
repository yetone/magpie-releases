class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2534/magpie-cli-darwin-arm64"
      sha256 "4b8f1ec15b422dfbd741ea685949f4d286db6ade8b03bdeeaa1ccdcc0c2d6343"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2534/magpie-cli-darwin-amd64"
      sha256 "6eebc30991422383081d310ec81ea91befd91268917cebcbc9b4031e0a50cef7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2534/magpie-cli-linux-arm64"
      sha256 "46f538ab9bc5656203add0cd856cfeebdd65f6babe3f3cae3e591c7b8d2bd5ae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2534/magpie-cli-linux-amd64"
      sha256 "e6a3b93ef7308256a5b73f750984cc4c7b496b2af05ddbd451fc30072c7a2716"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
