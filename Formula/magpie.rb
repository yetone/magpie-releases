class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3878/magpie-cli-darwin-arm64"
      sha256 "62690b77ad519dcfb83e9a83d00fd15d934716629ca54681bd716ab1bca4a2f9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3878/magpie-cli-darwin-amd64"
      sha256 "fd1f41814798234cdaad4cfa2ecb6516f1c47d741710dbba376f0343e383f1f7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3878/magpie-cli-linux-arm64"
      sha256 "7395b46262a41c91e48451158e74f3a5eb6f8419f13fa1c35bc9f68955105fc6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3878/magpie-cli-linux-amd64"
      sha256 "224e7764257599eda45f25883ff6470da8eef4493d9873c0c2b7c4429fd7b364"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
