class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3849/magpie-cli-darwin-arm64"
      sha256 "a8489f6053c6bc043376d1fefffbd4c5d31c8c6ad344f1aca3b67db55740f079"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3849/magpie-cli-darwin-amd64"
      sha256 "86bf87e641bf86fbfe9d5caaa1d34fe549bf74442ffbf5dade38ebd48e5f0272"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3849/magpie-cli-linux-arm64"
      sha256 "1150c6ea4c40e8cffe418b88bee193607e3c550f3d3a7cf974574fa48ec7f5bb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3849/magpie-cli-linux-amd64"
      sha256 "4502dd08676ae2b01776582823b68da8bcce8b9954ca5ec680788f703ef49565"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
