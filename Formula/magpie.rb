class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4183/magpie-cli-darwin-arm64"
      sha256 "e0dac6f7ff9834e3b5de9d2e114797281ee93712123a3217fcf96745e792ddd1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4183/magpie-cli-darwin-amd64"
      sha256 "86d22e98b9abf17b17d4fea861c482730bc79a5bb0130c97a2349e9c93f41d0d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4183/magpie-cli-linux-arm64"
      sha256 "8e68d9e3a3795446888bdd567f65b5d9b526991203dac0353c5dadcded88f64b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4183/magpie-cli-linux-amd64"
      sha256 "052d38dc79837d7cfccc61523ee29abb1d0df5a12d41a7cd8431cf102d230598"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
