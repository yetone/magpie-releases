class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3093/magpie-cli-darwin-arm64"
      sha256 "80463b1dfb9bd62f11ede97dd494196c9ad07704b7c19a2192abe19ca66bef58"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3093/magpie-cli-darwin-amd64"
      sha256 "7644120b3af3c98cedd8ba2ab89d34a5e4095d3dd41a0088b7df549d12eb8a11"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3093/magpie-cli-linux-arm64"
      sha256 "8e18d6dce3baf341023f49b30d60d79ba607a6c262057521d3517a87d325ca72"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3093/magpie-cli-linux-amd64"
      sha256 "2e975ceae52cddb8f68a32a7fa1659d226a6899967dc0b9146fd59b4929c7e9c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
