class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.957/magpie-cli-darwin-arm64"
      sha256 "5181b480f6ae5704bddc993a52b0a543da9a55424d1cb7c9b633581a853cb994"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.957/magpie-cli-darwin-amd64"
      sha256 "924d0e6267c1f94e5383764fe5ad6a84acda3d71862f8f19a0025686502681b1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.957/magpie-cli-linux-arm64"
      sha256 "492dd85d272486582d8a67f32c6209424fba8f27a573b14bccba11c05e80fc0a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.957/magpie-cli-linux-amd64"
      sha256 "e307f57cb3ba41adf987329f66c4aff9883e61040e5d9c12f742330a300da039"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
