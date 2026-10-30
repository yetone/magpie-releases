class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2124/magpie-cli-darwin-arm64"
      sha256 "b3ec743a31a6cbaa9d841f75ee2ecfd5a66aa3c2c29534126cf3fb1995f7b94b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2124/magpie-cli-darwin-amd64"
      sha256 "a0a129f7117436f3dc2ffc5bc44b5d51df838f4a472d494b6e11fc5df1df08a1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2124/magpie-cli-linux-arm64"
      sha256 "ff8bd6277e21a4bc0b7d5eff98e367a4408e6b88632a95a92d1ccb5a3eb33576"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2124/magpie-cli-linux-amd64"
      sha256 "d6b68d303fbef842ace48da9e6828f13c343307dfb86861954d03fff8e064310"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
