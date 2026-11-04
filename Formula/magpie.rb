class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2961/magpie-cli-darwin-arm64"
      sha256 "f609f8d7d661981f4e95d5fb504794daf83c9cfefd1ddeaa604366ebeb43067b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2961/magpie-cli-darwin-amd64"
      sha256 "2f91564a4cd786ed8078af53f2d39601ed59eb48374f9fe9b901d9a9a7fb7105"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2961/magpie-cli-linux-arm64"
      sha256 "ae6a91a586b21c27d9fd1c67b6927093be54450ce3a5e3628952aa791e39a189"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2961/magpie-cli-linux-amd64"
      sha256 "cd45b9b746b986b6e7dd20a26a19daef219a1aec30ea2f17f2e103614c048fd6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
