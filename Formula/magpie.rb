class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4730/magpie-cli-darwin-arm64"
      sha256 "135c5b007bb4c1befc7525b8cae434731450d576b8ee6d2cd411237f8222eab0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4730/magpie-cli-darwin-amd64"
      sha256 "6e5a38f38db350f13a66d5dd29cbd5b7a460be4de0f9fc7276ccc14e66c53aa5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4730/magpie-cli-linux-arm64"
      sha256 "d7f5da5e8403daead2373b4235887fff947c084f1f2b3e50c8a70240f715478a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4730/magpie-cli-linux-amd64"
      sha256 "2656e1ff24c0ef2a7bd527c73f849d7e0892cf660cd3671c653af2babd1aae3a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
