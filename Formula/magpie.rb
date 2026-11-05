class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3038/magpie-cli-darwin-arm64"
      sha256 "146b8c770220447236781933319f380f1515182634a9a091d5625f5f15fcd9c9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3038/magpie-cli-darwin-amd64"
      sha256 "c9c1e270cefd06ff6b5eb97b871d5205b0d618a3ec25c75fe01c1443afe7d9ac"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3038/magpie-cli-linux-arm64"
      sha256 "57804f3f0ef7c44a40bf123ac204896c3983093d50c93f70971135bfbc684c6e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3038/magpie-cli-linux-amd64"
      sha256 "55ff5627a66969f44d43928f0fc12800424ee0fc0b98355f16fdaa6427546550"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
