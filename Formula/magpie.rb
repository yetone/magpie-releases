class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.132/magpie-cli-darwin-arm64"
      sha256 "75e3cbf759ca325fa2355f2de7b0fa7df025d167368546fe9dd0dc303b534058"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.132/magpie-cli-darwin-amd64"
      sha256 "98c30a81ef1827945c1a3429f007f67d437a8cbe3356ee6a4b36bbe6d0d5d931"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.132/magpie-cli-linux-arm64"
      sha256 "ce100ee3ce07a01f1640bb9a87227132ddcae7dc69986a055b22d9c4e9ded5e5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.132/magpie-cli-linux-amd64"
      sha256 "fe7d144450042123940034b8d80098a066a2ca70ea368da2202e79dc49d06922"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
