class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4253/magpie-cli-darwin-arm64"
      sha256 "e1b5d15ca4ae10fcae8e0e865b8010f51430586c960ee3461c05ca90596db4cd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4253/magpie-cli-darwin-amd64"
      sha256 "e6f2a82f2b6cc1cd3c3a003d53b4df0cc68d1053d4866be5f031b7c4d851a359"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4253/magpie-cli-linux-arm64"
      sha256 "5c46407b28450fab7884cfc20b6c9f70d4d2a2df93821d5b43de7b712f579375"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4253/magpie-cli-linux-amd64"
      sha256 "677d0aeae5ab8fcac5a87f9178df2e05979e9d44732917716b5ec504868734d0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
