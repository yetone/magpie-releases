class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3180/magpie-cli-darwin-arm64"
      sha256 "3223d845663c4da6be1bf3dc1c342aedebddd6890bc327867b35e955973b059e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3180/magpie-cli-darwin-amd64"
      sha256 "41f628bc794b9d4a9db3cd2b098937544eb4b148f41f8d2f8a8226a61fbe9a23"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3180/magpie-cli-linux-arm64"
      sha256 "b423b8c248db78cf5e0df75061fb6415f140f5e85b64738323a2aeb4f76a4c29"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3180/magpie-cli-linux-amd64"
      sha256 "ea8d87ecb025129b7ea24cdf95046e4b8181174ab0c535fb87b00ba1c3be04d4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
