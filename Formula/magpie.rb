class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3338/magpie-cli-darwin-arm64"
      sha256 "79b3e1654debc676c8805f9f1cd5b1da0f03282994a2c0781d25bff02699852e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3338/magpie-cli-darwin-amd64"
      sha256 "70032b9f8431adaa73795452039fa4e7e37e364982a198b5f716f447f0544d31"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3338/magpie-cli-linux-arm64"
      sha256 "a4e0b3b6993e370f4ec10a3deee4b18802f9e005a23b588e23256d4f7818fbeb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3338/magpie-cli-linux-amd64"
      sha256 "75c8bf9fbc6d7e047768a13de177bc439e46d317e9bd1b32408ffc0871e528dd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
