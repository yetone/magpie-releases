class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2134/magpie-cli-darwin-arm64"
      sha256 "093afa3508ee471902cdd81e8ac960652d97a57f691222acc20cb2ca93699fea"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2134/magpie-cli-darwin-amd64"
      sha256 "5262518c2e1ced9206a2ae6933d2d28d05f0648ccb3618bf1435f1199690ccbc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2134/magpie-cli-linux-arm64"
      sha256 "4f27c297b18417169bfaf1305a4cdc34417979712637e2e885442fbcb5e49a39"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2134/magpie-cli-linux-amd64"
      sha256 "0d8b76f571f41a2270077f35e927cd4a7cf42dff3eff5f950d75797d567943ae"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
