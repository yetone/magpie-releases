class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3232/magpie-cli-darwin-arm64"
      sha256 "9ae5e180e9c802c707d2ddd974d6525d8499fc471c35f855b9232a818d11465f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3232/magpie-cli-darwin-amd64"
      sha256 "2121428ba48b5738606c4fd88c03e872a3d53f75a794ea0b2b63653ae30625f0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3232/magpie-cli-linux-arm64"
      sha256 "8ada073b8d49e24e246234371b6ae31a29fb26b7b860f09bb050f445b1f654c7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3232/magpie-cli-linux-amd64"
      sha256 "73c9b8ad770466590aaaf60ec95f36fc42927d70073fd531f7ba4f301d722701"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
