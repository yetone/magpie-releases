class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4594/magpie-cli-darwin-arm64"
      sha256 "ffa74d38ab06cbb2cf7d06cf1e90a5f24ef3729fcaa020e763f007ddeb2c2690"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4594/magpie-cli-darwin-amd64"
      sha256 "d304ad17b3a17b080107899ab782ecaeefd56a473dc021ce39ba048acab2b9e9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4594/magpie-cli-linux-arm64"
      sha256 "57d74a6d78803a3d832f79ed181dcb68627f3e77e9355ff85368ff8b16d5c868"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4594/magpie-cli-linux-amd64"
      sha256 "a92bca008f50fa98bb2128d2d3f789b1c164bd92c4e5b72dc4869e77efe68510"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
