class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3760/magpie-cli-darwin-arm64"
      sha256 "2dc07a37c06f46deacc36b78f07393bec9922845a016aa59bfc76188c1aa1a5b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3760/magpie-cli-darwin-amd64"
      sha256 "7c318a2a41e66fb4cd03e094997f5912b5b64dbf17048125f784f621e0b1293d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3760/magpie-cli-linux-arm64"
      sha256 "e19503bdc4144a3dc7f76fbb55c25ab111323739f41c57ed4745f59160eb51f2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3760/magpie-cli-linux-amd64"
      sha256 "68577ce3fe4bf8d21bf3f89710651993136444f98417932d00974a350220fb22"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
