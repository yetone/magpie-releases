class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.154/magpie-cli-darwin-arm64"
      sha256 "9f8739d170ddaf994308297a671e50d63de7f2f0d4480bd13d66f69fa0d0f64a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.154/magpie-cli-darwin-amd64"
      sha256 "6452638bb2047535118bad62a0de36c7d4f1279bdd9d4bc6fdd33e077174f815"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.154/magpie-cli-linux-arm64"
      sha256 "fa923ebf59e217d06c2e77e17367cbf92566b768f5acb7e84b96833c521b80d6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.154/magpie-cli-linux-amd64"
      sha256 "c06c18e0622e01eaa84c4c35733d2c2af2395560724953645164087d220f27f9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
