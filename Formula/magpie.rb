class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3323/magpie-cli-darwin-arm64"
      sha256 "4f8b1b1b41be27815d09b0c25443a2f07f0ef0f6949f088cd86eb2f57ce94cee"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3323/magpie-cli-darwin-amd64"
      sha256 "1ae76d30c1fad2122ba7105b6069f3beb4891c5bce20dc4852382ad6bac1564d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3323/magpie-cli-linux-arm64"
      sha256 "e87df2df3d7b34055312ff4ef06784dfcf94ddf4dbc4d23581709eadf8b925a2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3323/magpie-cli-linux-amd64"
      sha256 "999b2cf36f9bce27cad1183c663284208bfd13323ddaf1f5ffb383e15f247d2c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
