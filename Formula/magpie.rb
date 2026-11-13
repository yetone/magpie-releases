class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3982/magpie-cli-darwin-arm64"
      sha256 "99f16a2f83506f2882bd578fb310a9b332554212c2e41727e91413b025d04171"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3982/magpie-cli-darwin-amd64"
      sha256 "320ab7b0f8003b9b474a8813040e6525c4ae6ca22ff6d68569203ff49222a88c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3982/magpie-cli-linux-arm64"
      sha256 "75c58c53d4f571c53fed54521ca719f2bfaa39656b124a6d046dcc188df60410"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3982/magpie-cli-linux-amd64"
      sha256 "ae7aedd416ca13503b9305ca74f976beee0a35136618c7468abe8db5f0442358"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
