class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2797/magpie-cli-darwin-arm64"
      sha256 "5201f0eb5ba1c70f5f037f0431f58e375ce45c44f48d672688906618ffb8b904"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2797/magpie-cli-darwin-amd64"
      sha256 "fb2add057fd193420992513501c6d503bb30f800b3cf74af831342cffd2991f6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2797/magpie-cli-linux-arm64"
      sha256 "4ffc807c9d9b8eef70df692d136a833c489beeb826dd33915b4a6d4a0c3e7f30"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2797/magpie-cli-linux-amd64"
      sha256 "0be7597b3397afcb4c92c098824d9c9dcf0ff940bac11be09778895a6d1cb600"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
