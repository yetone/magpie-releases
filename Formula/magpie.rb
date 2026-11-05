class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3061/magpie-cli-darwin-arm64"
      sha256 "ee5c83f7d16a45dd0fb69554b0c72898a2697d4abbf76b197114a7524a2be6a0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3061/magpie-cli-darwin-amd64"
      sha256 "e3f7d8eb099861e309cc24cbc214d3f17135bd1faacb2755e256dd33453f259f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3061/magpie-cli-linux-arm64"
      sha256 "b5af17c4b53b08014505b4b50c1af41b7a9f1172d43a9d742dcb034e5553d075"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3061/magpie-cli-linux-amd64"
      sha256 "cefa28fa78f547fdf907ee884eb92c639765ecb1c62881fb91c3405ca956a65d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
