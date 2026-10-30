class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2128/magpie-cli-darwin-arm64"
      sha256 "7b2ba4481ac2a57591440c7d9f341fb967ea48231bf2757b54c4eb6eb4c6f215"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2128/magpie-cli-darwin-amd64"
      sha256 "29237faa1f518f65b0ab44871371344812bf7409338fa513486277bc388deaec"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2128/magpie-cli-linux-arm64"
      sha256 "e26ae943027e5f0b658c504fbfe6917b20e8b754220830cb619e4837e0339b65"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2128/magpie-cli-linux-amd64"
      sha256 "219415477879873f447287cacff273fd71203dc4b35035edddfa8b0a58e6107b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
