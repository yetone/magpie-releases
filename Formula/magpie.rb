class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3886/magpie-cli-darwin-arm64"
      sha256 "4144058b3bfab2e95d07e00273c195d60abfacc09465c96182c836aafce624ea"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3886/magpie-cli-darwin-amd64"
      sha256 "1f381554cd5e445ee1f5467dc9e05709808f5a62ad519029215515dbaab01a6e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3886/magpie-cli-linux-arm64"
      sha256 "5088c1e19cc7900e520470f72f15b9f800c95a36022a7dd125f480595a60e5e3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3886/magpie-cli-linux-amd64"
      sha256 "3951e7fdba34aac1957b76e312ca96a43619183154d85f146316bf6d0a8968ba"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
