class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4411/magpie-cli-darwin-arm64"
      sha256 "339af9416fc3e9bbefa858e4499e571812b195e2489325c525c7f55cc3f5404a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4411/magpie-cli-darwin-amd64"
      sha256 "25758a54013c8b5a6ae0372b07a7d9fb61f7618fe430c4d66babf6a8acdc32f2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4411/magpie-cli-linux-arm64"
      sha256 "7601acacf4ca67e6fe7f7990c9007bf0b89d89c6f1d0d732950b37a6a9bf7f68"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4411/magpie-cli-linux-amd64"
      sha256 "a66899827a3282dca99afebe2eb1a7beb2c60d141b79861b877cb76e263db51d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
