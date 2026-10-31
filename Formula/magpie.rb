class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2296/magpie-cli-darwin-arm64"
      sha256 "2dc6a2e339adf2ce173c66afc607941882adde41ebc1d1bf2d53d2a3e8ee776a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2296/magpie-cli-darwin-amd64"
      sha256 "c6be217a69dbadf764076a70cbef427583f05201ed83c833509326933d1f7955"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2296/magpie-cli-linux-arm64"
      sha256 "b897a44d1d23181c7d1eb510cf795321db6f955d57a56effd066f5fbeb2377a5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2296/magpie-cli-linux-amd64"
      sha256 "78aacf4ebfcdc21bdfd9c2a9135d7ea5720ba4431f62a559472b613cd1a4cb12"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
