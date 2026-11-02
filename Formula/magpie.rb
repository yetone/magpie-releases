class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2714/magpie-cli-darwin-arm64"
      sha256 "d980db4de804213222fafdda8bc146efbfd63ed50319d4ac6e30b0d54c41c8a5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2714/magpie-cli-darwin-amd64"
      sha256 "e0774fb4ddbf40b07a959e42ccdfca4c4ef10003a873b4b8b648fdf6bbde9972"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2714/magpie-cli-linux-arm64"
      sha256 "5c6ff52f05f0962831b3fa4e310bb697cfb3d810dd956ab51749cbeab5ed40fe"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2714/magpie-cli-linux-amd64"
      sha256 "27ad8d70d088a6e7802a88f9fca803818ea833f976827b49f8018844f4ba2822"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
