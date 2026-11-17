class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4368/magpie-cli-darwin-arm64"
      sha256 "2a03e60a35db589b9a5446d582b337c6af940026da44f36882bc1f2c9d54a91a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4368/magpie-cli-darwin-amd64"
      sha256 "30e9ee0efe7d14580e99fec370eb2ffa238ac7eb813b33d2db92e82ccca16534"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4368/magpie-cli-linux-arm64"
      sha256 "229f69c3f61bac7cc645e2fc0f741099c734f79b29903b486480c691bb6b5ad6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4368/magpie-cli-linux-amd64"
      sha256 "fdfd90110134843f8b59b9f5963e91e997332da41792522cff595121c6b5adb2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
