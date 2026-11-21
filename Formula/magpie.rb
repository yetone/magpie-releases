class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4643/magpie-cli-darwin-arm64"
      sha256 "b2754ea2738c16ab3dd0b8bfbbc6df9c10fe1639894e7d85f3a5b5eb05ced9bc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4643/magpie-cli-darwin-amd64"
      sha256 "d4766831fa683bfe021174c27c9b9cb06e729eb007146aa61d2bd727ef22be17"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4643/magpie-cli-linux-arm64"
      sha256 "6fba001001f63958c0a643a497cb4f73ddb5944022414bb52ca2d0d78eada90b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4643/magpie-cli-linux-amd64"
      sha256 "18038fed3c6785645b6247507cda893d1073d38ca89a3184a6dec8d77c8be271"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
