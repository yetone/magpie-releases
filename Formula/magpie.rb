class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3926/magpie-cli-darwin-arm64"
      sha256 "34b2adcc638aaaff4ed0e1526a174246af26b1162c0e13e62e2f1b53143dc1cc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3926/magpie-cli-darwin-amd64"
      sha256 "aa19da39e7c6ffa7eed82e64907cd8955ba912f6e3f93ff2d336cd6e77393499"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3926/magpie-cli-linux-arm64"
      sha256 "269d16dab53f2c5748dc37827699018d693ed1de1bb224397bbe2427a1098090"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3926/magpie-cli-linux-amd64"
      sha256 "19e058e2a7c2fb48516e99d291e00335d3cbe89af984dee5dfae4b03756eca5d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
