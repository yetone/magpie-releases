class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1048/magpie-cli-darwin-arm64"
      sha256 "543cac9f83ac51feb51686b8f80ec891a97fcd0689472e16efcd9db560923114"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1048/magpie-cli-darwin-amd64"
      sha256 "403e620e896e2d37421c0282d314d60293fb1774e6dd407396aebadc4654397a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1048/magpie-cli-linux-arm64"
      sha256 "5a72cb51b6286d4fb25dfba1539b133250819a53122bd44cb1bb5727ed263118"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1048/magpie-cli-linux-amd64"
      sha256 "1cf64b171106b4a2f1a736ebbd11bf61a0cf7bd3c5d05131cd099fb17bf5007a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
