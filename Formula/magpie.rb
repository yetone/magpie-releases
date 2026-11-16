class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4341/magpie-cli-darwin-arm64"
      sha256 "ffc2b816e77bf1b8eeac9c6a898f7eb002e86a2785ae399659eb05d1d0dd3837"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4341/magpie-cli-darwin-amd64"
      sha256 "4239b5f328566ec0041feadbb7075dca5189ca113716a75c60bdc829ed2869c9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4341/magpie-cli-linux-arm64"
      sha256 "aebe40869bdb1c1155088646e0b62b9b116ef5d8cfabcdf1c29798c04e7f8e0c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4341/magpie-cli-linux-amd64"
      sha256 "f96508fbc5beb7bb6f181fc3fcba564c4c7f8670ee58c53ef498b9aa6942d1a1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
