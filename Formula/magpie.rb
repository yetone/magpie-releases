class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3517/magpie-cli-darwin-arm64"
      sha256 "b95dc8da061d5fa07798cb3bf52699d41d2b1f091b8caf5bc722ac2dc7b1b04f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3517/magpie-cli-darwin-amd64"
      sha256 "5436dc16bab9116438b884520713c3aa006ebaf9279b812a7486b7cea2b6a882"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3517/magpie-cli-linux-arm64"
      sha256 "3ac9493fe8a3f4f38f5fb5e278721ab7e9c7194ba1cb5905f568c9040fe9087a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3517/magpie-cli-linux-amd64"
      sha256 "4cebd2f74603d482aef2c7b1a022280c539ee0886d10d91252a2ae295e5d14bd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
