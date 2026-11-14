class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4121/magpie-cli-darwin-arm64"
      sha256 "961e887766b82ffa8eb9945bd174013ebaf516f365c5b1584d59a361d2515242"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4121/magpie-cli-darwin-amd64"
      sha256 "3b62f48f3225d7a8a137ea422355877526c47c56242ff36987761d3f0d9a1f4e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4121/magpie-cli-linux-arm64"
      sha256 "4e85fabaa91a1d0e6147b162c3cf342c3924b30af86295fe92ea7cb18834e808"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4121/magpie-cli-linux-amd64"
      sha256 "bfeb0adc7e03fe2fd1443cef1a59304379200ad5bad06dd3fdd116a73f93594e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
