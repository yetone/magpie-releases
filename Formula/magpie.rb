class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2203/magpie-cli-darwin-arm64"
      sha256 "0b7a6c5392cbc6c78a82520a8e407b4767ff7f6caebecc03d194ba951bbc136d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2203/magpie-cli-darwin-amd64"
      sha256 "e033c2b5526ebc1e86d8fa1b0adc5fa04c0dc9e20a01dd8575abe6049a9220ab"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2203/magpie-cli-linux-arm64"
      sha256 "756d16770c3bfd19ecdae21c75689fbeb6f21644d84050967441f1476659decd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2203/magpie-cli-linux-amd64"
      sha256 "28fd8bf036a97bb802b950e3c3fdb353b85e590e073ecbc10ba406a69ec2af56"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
