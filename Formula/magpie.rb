class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4238/magpie-cli-darwin-arm64"
      sha256 "741fad42bacf38953d79970934b389155eff3a02c0a8ddd40f240bd020f3cfe1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4238/magpie-cli-darwin-amd64"
      sha256 "340592381ad8adca3b8518c219bc25ecefab23567e678814f9e415f5c484a8b2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4238/magpie-cli-linux-arm64"
      sha256 "2aa51431ad9415670f74e41c4dd6f59ee2293dcc92ac10dea4eeb1db92d3cdf1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4238/magpie-cli-linux-amd64"
      sha256 "a4fe7e80679b0e859b2918dbd186d1e197b491e65f2615e3fa1e69e8f130fbe0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
