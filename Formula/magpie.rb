class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2606/magpie-cli-darwin-arm64"
      sha256 "f7b52726a241c8a0f5fe824d4d4ccd20bb2741925297024ec1184ee9b174dd8b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2606/magpie-cli-darwin-amd64"
      sha256 "7c4d765dad4e44de1f20191b3ef27951811b03edb3f27a418a5dd80f61ec472a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2606/magpie-cli-linux-arm64"
      sha256 "f7bae940e504c4979f615f6175df870f5b02db271e4586f6388262ba9a97e7ed"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2606/magpie-cli-linux-amd64"
      sha256 "7ef000bee72b8c224a3c95d4e768457ff19a7763310557b75e06fd43fac4a3bd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
