class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3103/magpie-cli-darwin-arm64"
      sha256 "eebb471eb39667c0af24b91d722a804ad8120d45e17413c863317cb4d0f5e254"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3103/magpie-cli-darwin-amd64"
      sha256 "1bf4d3c07035815998173666d0103d9796a0fb6de6b672129dd988baa2f0efd2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3103/magpie-cli-linux-arm64"
      sha256 "bb38f140f9dd2a198f9b258e79358108f00d64fe02de52d24f1a5259c1ced119"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3103/magpie-cli-linux-amd64"
      sha256 "4fc769a71110b8c0734c6454b61a8903baea7a38dab1d19ec92c5166fe6a35f4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
