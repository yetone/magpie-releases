class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3698/magpie-cli-darwin-arm64"
      sha256 "ba769425df617e4f5ed2049750f168108a6805f606059dbe7c997157f477f2c9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3698/magpie-cli-darwin-amd64"
      sha256 "38bc7debac0d1b45f7de6541a5a1bdcc0b39e595408c7340e3226779cc2cbf95"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3698/magpie-cli-linux-arm64"
      sha256 "467dfafff7b3edf156fea8be03a737a5a2a110b928fe0f312b5729301ce2c442"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3698/magpie-cli-linux-amd64"
      sha256 "c02d8a5c8eaf80a07eb48e5d59d55f115668e4bfb25c8798b358dbddcfd306dc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
