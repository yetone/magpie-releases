class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1020/magpie-cli-darwin-arm64"
      sha256 "4459e39866fb11bb551dc53aa8392fe09f9b15ac814134f40252dd0945dc3af6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1020/magpie-cli-darwin-amd64"
      sha256 "066f4371fb7f3e5d02849c260317eaeef906655df1571d6364a91605dd05a6ea"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1020/magpie-cli-linux-arm64"
      sha256 "aa60a66d6f867f3aadeeadb2c0febcd32a623b4218abc09597252cdf1b72441a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1020/magpie-cli-linux-amd64"
      sha256 "bdd66316b014e458d75647f1b3d548b58a9d8ac30bb441efa3ae99748b220443"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
