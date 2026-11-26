class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4831/magpie-cli-darwin-arm64"
      sha256 "a81acfa5701f87bd1e5556aa9e50b30544afeb3bfe775cd6ae2bd3bf234c8c37"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4831/magpie-cli-darwin-amd64"
      sha256 "c772c97c32dbaae262eb2b41e968e2b29af35ce63ceca47d93c4f25313688854"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4831/magpie-cli-linux-arm64"
      sha256 "1bf8f944c98928fd4bc2a5f94df0423767f244484b87b20d208ce3b7ab0221cd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4831/magpie-cli-linux-amd64"
      sha256 "4eb3b10f3017828045f32c5fc5cd29316dbba227313c37bc9f4d22e304bf4541"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
