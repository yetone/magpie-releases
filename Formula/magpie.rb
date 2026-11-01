class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2587/magpie-cli-darwin-arm64"
      sha256 "6b4328bf1f10fa9dec4d8201ad6a3a77cc406c9800d8d5fef61b6241ca6ed5db"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2587/magpie-cli-darwin-amd64"
      sha256 "c9ab108ed53aa4b7bc6fb9186db3f31a99de6ff58bc2827544d81c480714c8da"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2587/magpie-cli-linux-arm64"
      sha256 "7f97f59dcbd12ab973e8bbb02f15cf4dd6cbc3c9ba495ac76da4386c6aedbfa3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2587/magpie-cli-linux-amd64"
      sha256 "700c1fb64f0e6d4b48612d4e832a390fb3b7e80a30eb301215dacf468f3117af"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
