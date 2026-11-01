class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2631/magpie-cli-darwin-arm64"
      sha256 "df608c276616b62fd45b83024eacd8a2f1222d41a6969d693a10eed8f3b76795"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2631/magpie-cli-darwin-amd64"
      sha256 "73583f2b74f64d38f43467b905473bd094b42e716a6488a4f720891139100818"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2631/magpie-cli-linux-arm64"
      sha256 "ec35b991e337e577e7d91cc4d8cf1c0ef49a3ef3edb6a5fafcddb3561093ba07"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2631/magpie-cli-linux-amd64"
      sha256 "9a67d650852cc8ad63e136060996b5a9128d2660ced83701cabfd97ad9ae442d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
