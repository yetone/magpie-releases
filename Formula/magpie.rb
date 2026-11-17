class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4353/magpie-cli-darwin-arm64"
      sha256 "2d8fe76ef7106370dae62282b5cf9019bac35d41f5b67212768f41724036ecad"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4353/magpie-cli-darwin-amd64"
      sha256 "b75e97d5169f577629f09acd3c72b47c9d85f3275a803fa6ece33a7a267b1e2d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4353/magpie-cli-linux-arm64"
      sha256 "c0afa28d7fcaf41df50418f07515649b3ba89a9146df87331a36a47c6793ba32"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4353/magpie-cli-linux-amd64"
      sha256 "909510ada5d2844fd9b877320af14c020fc401b97fe7a88925a289d6c9c64255"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
