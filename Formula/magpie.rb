class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4461/magpie-cli-darwin-arm64"
      sha256 "9458b92ffcb6650871bd23c65ebe3d1dc198907d9d58b2ffed0da393f1091f3e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4461/magpie-cli-darwin-amd64"
      sha256 "871a9a1ade0764b187b5cbcde51e8a0763e14b485b4b2b4ce224f8a6fa06acf6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4461/magpie-cli-linux-arm64"
      sha256 "9798868c10da7c1a45245a4ab0b3dc569435406331aba176f628ada25a3696e8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4461/magpie-cli-linux-amd64"
      sha256 "ce045c3fae23820aba0d1e5c35abc2c3f8fd457ae4a73990beb6285d0a7aa870"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
