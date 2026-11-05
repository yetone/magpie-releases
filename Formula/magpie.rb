class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3010/magpie-cli-darwin-arm64"
      sha256 "acf8965ff7e9adad172ea1cd93e39b3c91eed1f25243ebe6a81e64d588396026"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3010/magpie-cli-darwin-amd64"
      sha256 "1590e0e4500fed62d8e3746e1ac8fda454f5a064b0e30b23f9dcf59ad77780fe"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3010/magpie-cli-linux-arm64"
      sha256 "0d73f6f22de75d15d920c7636ea849e7b3c8572e1fd9d7f720488e55f8aa1550"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3010/magpie-cli-linux-amd64"
      sha256 "865bb0687995acb56da968b8ef0d2a6c6989fb118363537142e4c09a25e04622"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
