class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2289/magpie-cli-darwin-arm64"
      sha256 "f78ec92a64b2828fe85ebf46228dce1c73fd5ab0315a495dab32a4c570d673b6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2289/magpie-cli-darwin-amd64"
      sha256 "de9c20f1ba992110479d5b310f6471ce67b780a639af7dc4ceb1966368d9d33f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2289/magpie-cli-linux-arm64"
      sha256 "71394cc6afa36e588c4ffc1f082d0c854773455b74067f8e31e7ccec2cbe171b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2289/magpie-cli-linux-amd64"
      sha256 "172257c959347fdc6707502b7833b7651e2d0173297d2b53070381b03e30f411"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
