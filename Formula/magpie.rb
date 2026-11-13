class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4049/magpie-cli-darwin-arm64"
      sha256 "c953ce1518f1ef0b65ae79606dca895477c728bc1cc1e5754b0b8bf6d8ceb8b4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4049/magpie-cli-darwin-amd64"
      sha256 "604c537f37cb83c21773999b0f946aec32d10985976e7d5038b0df56e80b9aa0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4049/magpie-cli-linux-arm64"
      sha256 "eb69052a2225df3c48161d8867ee29aef855b1c4df2c3d241288b1cd2773fbe6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4049/magpie-cli-linux-amd64"
      sha256 "7d452aa79e4f8e08e4e87d4f327da830f806c35709efc23c4408d02bb4e08c2d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
