class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3238/magpie-cli-darwin-arm64"
      sha256 "9398a43a4875f397d75408d478e91f436f824d0e51f0915b56da2ca2aa411e13"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3238/magpie-cli-darwin-amd64"
      sha256 "8476801e99e964ae7b8ad02ec81ab5831f6133634ea8caacfdcb793dc4e46225"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3238/magpie-cli-linux-arm64"
      sha256 "e51126730bc9a00f2cc19608cfbc81725869c2da699683cf24c5a5488f187c18"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3238/magpie-cli-linux-amd64"
      sha256 "c4c958d31a09977cac2fc76a90428eafe0cfba3ff210eee5f2aea2acbd4ab4d6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
