class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1867/magpie-cli-darwin-arm64"
      sha256 "71d7e23429969ce30b038f1e66d443d03ec5c7fcc32f282f949d269644324194"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1867/magpie-cli-darwin-amd64"
      sha256 "8765801007377851983809ea44248d57f44babe07d2fb15563e6ca25ba0f8541"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1867/magpie-cli-linux-arm64"
      sha256 "4f30d6154607fb179e538baf2806a774153ce5a5e9486538ba66a427246dd1e6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1867/magpie-cli-linux-amd64"
      sha256 "7f42aee1182f8688171f395fd011dc230ece9067094d99374ebbcdcba50db179"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
