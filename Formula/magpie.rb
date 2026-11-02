class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2761/magpie-cli-darwin-arm64"
      sha256 "f5cd755805b9b441dc4eca4e37b8c320ab1fe531a00022ea01b0f96f2bc8e46c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2761/magpie-cli-darwin-amd64"
      sha256 "e567ab7c48e6f28488f9f89f17ecf6c32cd05d36d41f96653ee347fd62a5445a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2761/magpie-cli-linux-arm64"
      sha256 "c035a898c609b7fc97f22fae65625553e9223548ec0cdaf666f83e36e9731569"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2761/magpie-cli-linux-amd64"
      sha256 "8e3a4418a581c184d747923239332f6c77cb6ac8e7ab36dec658c5e6839de4e9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
