class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2662/magpie-cli-darwin-arm64"
      sha256 "bc71ed1162fd52191b124298f79af94c9e9f3622e888664fb45f07e0964655a9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2662/magpie-cli-darwin-amd64"
      sha256 "587101fb77e355de73294da32d69fa766bc319e21c11e3d8d482f6aeeebf4997"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2662/magpie-cli-linux-arm64"
      sha256 "d7659c5af731ed3bf26ed4d1d075549393164bc6ab759d1620a48ec648ccae05"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2662/magpie-cli-linux-amd64"
      sha256 "2471046d04c1c337fda1f68e0746befe19d4078b507367af63180b1ffaa239f1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
