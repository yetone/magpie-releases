class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3143/magpie-cli-darwin-arm64"
      sha256 "8cd909e4a5dd0def97cb2c0db4b887a074aeaeeb35ee205dcf2329a5124822b6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3143/magpie-cli-darwin-amd64"
      sha256 "e301ad41dad6f6dbb33b1398e707e3492d29b91a24248f203159617c84da0562"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3143/magpie-cli-linux-arm64"
      sha256 "c30b66eb80a7c16db16f30067326173a2ff500b3e596594bc5dcaeb24e627e21"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3143/magpie-cli-linux-amd64"
      sha256 "e141c00a6f1067b03f2f75d6e0443474549f6d7fe54035edb044360d13c5714b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
