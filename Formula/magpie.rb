class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3047/magpie-cli-darwin-arm64"
      sha256 "b5a22ad332b482a7d15d1e665ec20107beb79de06c6562f0f5431de9dcf0f1fa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3047/magpie-cli-darwin-amd64"
      sha256 "313cddb8c1e4cd36b88eaca181258fea147dc3be724bc3b3588050ad950b11a6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3047/magpie-cli-linux-arm64"
      sha256 "5253af396151f6f9964c57751d627f1264387d6818f58a9591fcaab1c8de04a3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3047/magpie-cli-linux-amd64"
      sha256 "75bcfc50811ec4ba27c75d5cda6a342606685c7b78c2ca5dde12746561846785"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
