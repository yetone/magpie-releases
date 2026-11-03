class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2784/magpie-cli-darwin-arm64"
      sha256 "599a5fa74b5af443ef720e02b0caf7d49c02f24fe820e8ab83198a3c2b0a31c6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2784/magpie-cli-darwin-amd64"
      sha256 "553ff26bc5b968c5e522973172de62968f34c2a8383e7409a5d49011f0ae0fa1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2784/magpie-cli-linux-arm64"
      sha256 "7d73064877b19ca8eafb909253d00eb40387b1c881a388c9529ab6969151fce8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2784/magpie-cli-linux-amd64"
      sha256 "8d5c3146e2a1f3e192e9348b35f990fcfb0348aaea8534976dfa19d0d6966cc5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
