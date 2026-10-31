class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2487/magpie-cli-darwin-arm64"
      sha256 "444052d0e4517788869062b3bcd3e0176a82f2c8baaffd7a0045ffbc0d69dcbb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2487/magpie-cli-darwin-amd64"
      sha256 "d3e32063bcede36143845954c4f3986e577dc35f807615be49dd92fe24ce9130"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2487/magpie-cli-linux-arm64"
      sha256 "275835ee5a084b2d7ae8dc6c86d1d040dc8d20f1fdd439ca8bde1d9a78e97d9f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2487/magpie-cli-linux-amd64"
      sha256 "03f701f93cd707dd74f7cb937344467a5f29afcd0a6755e38248335f188bc51a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
