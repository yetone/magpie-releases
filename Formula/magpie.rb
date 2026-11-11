class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3726/magpie-cli-darwin-arm64"
      sha256 "b314cd137b1d8a15b1e8fe6f59722581deb64ca2fed0cf81caea1f55b23ab6b5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3726/magpie-cli-darwin-amd64"
      sha256 "4fd06c9dc52a8675e3b1b410297dd663d40e87be6f75a88aebff8c64e72ba54d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3726/magpie-cli-linux-arm64"
      sha256 "82e6c0eb10b1580858c38cdc271ba104b0c9ec4f60664bda4bb4e3c2dde4dc69"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3726/magpie-cli-linux-amd64"
      sha256 "eca570b7b92ae1c7f7396a3145db28080831d93649f4d04397685598b3baafaf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
