class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2813/magpie-cli-darwin-arm64"
      sha256 "f945898de599e91d46d73a146f12b9593ac148d17b26e0173868e55841137369"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2813/magpie-cli-darwin-amd64"
      sha256 "088b895592ed96d3539385c48f117a47eac362b1449524b4c3bec92685dc7ef4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2813/magpie-cli-linux-arm64"
      sha256 "aa95f85dd7278fa61aefe7f940f2a03e8979c7ae256a5111078ad183e38679dd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2813/magpie-cli-linux-amd64"
      sha256 "42f4f3eef0d77cd7bf4b842d99e2c81aa992166a1b88917c1620c76f7d3a7247"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
