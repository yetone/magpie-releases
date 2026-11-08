class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3297/magpie-cli-darwin-arm64"
      sha256 "ed66671c97bfa656de69bbc38f92cb88f55c7e46b4b6233860e37c0fab784c16"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3297/magpie-cli-darwin-amd64"
      sha256 "697a573ef793346179e5c1154ebcc0032d8786c17c692343cff0b0548671eaa5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3297/magpie-cli-linux-arm64"
      sha256 "1e4b6257a6f9f4c19bd141bf801d72db3edf26d85726fe7ead9759de4c05f066"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3297/magpie-cli-linux-amd64"
      sha256 "afa63d8a0944808146ff1ea578498d2d296aa2b43f487696322ea45ce66e8d99"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
