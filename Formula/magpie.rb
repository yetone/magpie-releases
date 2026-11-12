class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3880/magpie-cli-darwin-arm64"
      sha256 "9b071a5f8785d16aaed77301af1fc062ff6ee59bb81d7c6cb6142caae8e7fc1b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3880/magpie-cli-darwin-amd64"
      sha256 "caef7a5cad5a144d0836568283f9461794396c9deb71226813bbb46743612cfd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3880/magpie-cli-linux-arm64"
      sha256 "fbb25748ae1eb7615c76aa54f78c526b9e5659301d91d1599eaf30df14c16995"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3880/magpie-cli-linux-amd64"
      sha256 "73866b617d9609a511ee517fc2d77af691455887e3d71c94fea65256de97c021"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
