class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.993/magpie-cli-darwin-arm64"
      sha256 "634245f5a095d52e6bbd18e9e48887bc8e01388c6a749259d768413388a5f6c5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.993/magpie-cli-darwin-amd64"
      sha256 "fafc4d197bf089a61b936cdf18252fa5925d0b58ee394b7d336fb82ca12b2f41"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.993/magpie-cli-linux-arm64"
      sha256 "617c88b83817b288bfb5b97e07e0915442733617105bf9574fbb2cc3cfb3333d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.993/magpie-cli-linux-amd64"
      sha256 "7df35e6c47d07ed7feacdce6295e6587f83625f0623104669857027fa3fc0644"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
