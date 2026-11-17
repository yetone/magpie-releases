class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4383/magpie-cli-darwin-arm64"
      sha256 "19c0bb6694bda2b1afe5afa5a1b7984dfb5b28b06142622c2ac573571ce1df7a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4383/magpie-cli-darwin-amd64"
      sha256 "3f6662e66dd6863a781cc43cefc2b9892c6bfe5479704dc2976789452cc21d5e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4383/magpie-cli-linux-arm64"
      sha256 "d6ee90d28e34b11dc2a56b9bc740fd965ea4ffc02accb7d9730516eb848dcd24"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4383/magpie-cli-linux-amd64"
      sha256 "97e2499a12b68939a33948b88af40f5168554e914cd2de85a561b6f4f35002a5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
