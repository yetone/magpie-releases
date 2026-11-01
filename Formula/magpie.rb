class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2586/magpie-cli-darwin-arm64"
      sha256 "70e24037cca6d43f59d0d19e4489992755e518d99aad7115ec702df904fb5e8e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2586/magpie-cli-darwin-amd64"
      sha256 "69f27208800ae4d940d2fc377414634480e767b601279bab3c54162aec0cf68b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2586/magpie-cli-linux-arm64"
      sha256 "06ea4bfc44058e2d8f037658e4d7ff629c19a26634229ec8581348ab13cd5f48"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2586/magpie-cli-linux-amd64"
      sha256 "9af4d68bd6fcf883f2703b610d6ceee6fb3a56ae2d32eb8c50fa59213a5629a1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
