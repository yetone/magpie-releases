class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4413/magpie-cli-darwin-arm64"
      sha256 "b40a583537c73d281eb58b4333b04951490bcb060609e7d8a8ae596ec76d1078"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4413/magpie-cli-darwin-amd64"
      sha256 "bb173ee56900997d6c06bc693da7dcb927a8d9c5eb0e3f09685161a2c4f3ab27"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4413/magpie-cli-linux-arm64"
      sha256 "d17dc116885247e6d7e3052db282c68683c748ad2626cdd0f7bca76ebed3abe3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4413/magpie-cli-linux-amd64"
      sha256 "35938136b9fef82565f594770468c29e5bb808612688342c720465007e778cc1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
