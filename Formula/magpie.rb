class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2440/magpie-cli-darwin-arm64"
      sha256 "6f36056261459d7c16e4e7e7d0a57bc94f747674245f77dd453a9f7cb4cdfc7d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2440/magpie-cli-darwin-amd64"
      sha256 "722ec6be687e14a8674f1d4591a68b2c323995b6c972d2d891fb4cee70420c5f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2440/magpie-cli-linux-arm64"
      sha256 "9b4dfdd64c745f0e8fcbd24a53fb0d69dacb8db058f145babd479f327d2d190e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2440/magpie-cli-linux-amd64"
      sha256 "f9d373421099e8cc3fcac69b87b06b09268ddb943130d7cda6528602adaef6f3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
