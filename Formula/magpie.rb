class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1162/magpie-cli-darwin-arm64"
      sha256 "149f87e8040baf7dc6ede18c09d49629986e47c03a0838ebc6c250703507cf6b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1162/magpie-cli-darwin-amd64"
      sha256 "e4cea429fbf0dfe02c50c2b7a4b8a0f340b68efd294ac6143edbe6800e727519"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1162/magpie-cli-linux-arm64"
      sha256 "428c74645b2bacb8c3c9273730f41584f94c690b47d4a4d8234b5d290c0bf120"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1162/magpie-cli-linux-amd64"
      sha256 "dbebb10960c3044b2f1f64622e4a783f17224a0dd4a3afe4a56a2d27b3fec642"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
