class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4424/magpie-cli-darwin-arm64"
      sha256 "9e111743ac87c09315ee3dc3f440fcebb11764453a89532a4f9b680db83991db"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4424/magpie-cli-darwin-amd64"
      sha256 "aeac97e0a9d5c9bc5ff0a174693a897d4cc77475b0a199484d237dc11657c749"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4424/magpie-cli-linux-arm64"
      sha256 "8cb6657946cda3653e38d366dcf7992841581154adf0b1af5cdde2fa7e57bc55"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4424/magpie-cli-linux-amd64"
      sha256 "f94ddf8e9a10006d1a6ea8233a1c6d7e23c54741a948fd5fb8d5e344c910dc14"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
