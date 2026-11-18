class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4405/magpie-cli-darwin-arm64"
      sha256 "457b4abd7157408b0c5e165f478d997c1c807678773db3b733e9d6e1cfc20941"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4405/magpie-cli-darwin-amd64"
      sha256 "c5260f7f305d4515146f1b02bd17841b223de2b23fa6102cec623ba912ea34d8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4405/magpie-cli-linux-arm64"
      sha256 "c9e25cc2be14ea214bd1199251d4fc51cee5eeeeb8ffa362a5f64ed82fbc4edb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4405/magpie-cli-linux-amd64"
      sha256 "d7f4df4abeeed054434a40d9236ab7db9d625f9e25421c6ec6743d292bacb80d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
