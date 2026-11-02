class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2693/magpie-cli-darwin-arm64"
      sha256 "cbd2900a59c29581d34e8a6a58661599789828df44fa5fa353bf4b1485ef51e0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2693/magpie-cli-darwin-amd64"
      sha256 "07abf58338b60c9a6c584dbff7425c429320d503a469d825eb64d8d11d0bc034"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2693/magpie-cli-linux-arm64"
      sha256 "48eda45d68bde64e351134519e34c94945c1863a41a337de2d48646442db15a9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2693/magpie-cli-linux-amd64"
      sha256 "b7cc63ef444a7623601f1813972810859bb2354a67b950d6976f0fe87da43daa"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
