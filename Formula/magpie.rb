class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4435/magpie-cli-darwin-arm64"
      sha256 "ff5fc8d918eb0053e76538eea0beb686c98c2ae062d0e4f3ae97b4cf8ad842f6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4435/magpie-cli-darwin-amd64"
      sha256 "8ee7cb05f61c07ceee3a24f4aede364fc96ae715d5fbc6cbc3e27e0a286e7850"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4435/magpie-cli-linux-arm64"
      sha256 "bc51a19afb7bfc0ff404e19f3632d8f93c3a937aed1474a899f71638d836971f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4435/magpie-cli-linux-amd64"
      sha256 "0b02874a8153466c3a2c0416e01b41f49ff9e63741b46ce2d40951ba61f72e1b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
