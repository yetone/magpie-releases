class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3466/magpie-cli-darwin-arm64"
      sha256 "862f26706ce1a7f07b739ccd12d3c6895d07212bb91d43f94e0e4ac288f78736"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3466/magpie-cli-darwin-amd64"
      sha256 "a24852512cb5648b7e20e9d5488e4e212299f97a6a30045664b75f5e00028017"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3466/magpie-cli-linux-arm64"
      sha256 "1494577a5ece9ff58197e445689aa00715c9c08d75019c0be3e75275b3a5531e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3466/magpie-cli-linux-amd64"
      sha256 "9bce635e44bfe755b4f8d770fa924c0a4c6d29f7037f787d82bda389e3107da0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
