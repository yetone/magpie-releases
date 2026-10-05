class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1060/magpie-cli-darwin-arm64"
      sha256 "b0f586d18d82a556853b9b22207f1c1b824db1bf836b2c8bb3016dca60609ccd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1060/magpie-cli-darwin-amd64"
      sha256 "a869da9e8507ed8abcbd6847ca1223bde7d0856fe7ac137149b5e063b50db5d1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1060/magpie-cli-linux-arm64"
      sha256 "9734fe5c60d9227125ca60c391f31a968378cf448b1a7f8288d3e46f50c124ab"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1060/magpie-cli-linux-amd64"
      sha256 "6144b9600b7ed9a81885ef35b29ecb16a7291608ba845fb38cde456e46f27abb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
