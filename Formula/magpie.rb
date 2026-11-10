class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3513/magpie-cli-darwin-arm64"
      sha256 "1dd0e1a965b38b3ab54afe2da210075fa2315f88799300baa863fca0b16dfda7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3513/magpie-cli-darwin-amd64"
      sha256 "e76f02c75f5e2f460606c43aa3e617f2b7a366a43572010f62cf9fd208a877ef"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3513/magpie-cli-linux-arm64"
      sha256 "5fc4afaaf2a77124fab6477300a00a1966ddf575c00c7f70fae886776181c9d9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3513/magpie-cli-linux-amd64"
      sha256 "74e448ecf9e349f76d9ecf72e8daa37a014ca57ce5212c837a0c16e3dff47a0f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
