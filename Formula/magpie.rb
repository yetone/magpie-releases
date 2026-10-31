class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2503/magpie-cli-darwin-arm64"
      sha256 "5ab395074f4dd92e439e88fd41694796a7eddd890bc0b2a90a0a2fdb1752b95c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2503/magpie-cli-darwin-amd64"
      sha256 "d64c732d61f5dacdf2eda91e4beefb5594437878e0058fa47452b917469abe4a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2503/magpie-cli-linux-arm64"
      sha256 "8a9195c9be5dea05cbc522a32906f181dd6b698fa794d2242030657807387356"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2503/magpie-cli-linux-amd64"
      sha256 "e5359b168fe442de52ce5ff7551caba98a4c77326ed5b051d2d057dc2cc4a496"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
