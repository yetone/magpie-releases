class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2009/magpie-cli-darwin-arm64"
      sha256 "b37bcf3b09c7ff50f45c4be1a6ea5ee07d8869faae28bce93ccd65439ca762df"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2009/magpie-cli-darwin-amd64"
      sha256 "2eb97338fb64cd03524f1f227ac4d2de266a9e4a1fd84344c3fd6b76abc10724"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2009/magpie-cli-linux-arm64"
      sha256 "04169349a77cda9a25f3e6ecf744c6dffb182cf4a8f794b3d59d2afe082eb56e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2009/magpie-cli-linux-amd64"
      sha256 "9b5b9f79b6556bc0c73bcc4126c8bb5e0bd4be0ddfd40a38ff0dc7aa7b68c8f7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
