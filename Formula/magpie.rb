class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3767/magpie-cli-darwin-arm64"
      sha256 "d4778bd032406340e85fe0788cdac1067d0bc071139d9cd0e951ab477be39863"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3767/magpie-cli-darwin-amd64"
      sha256 "ee9912f60ae0185ef44c0fd5380c837d2eee733c1fffdc2e89c254c952e1bf9b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3767/magpie-cli-linux-arm64"
      sha256 "fd2465d8aa4212d0fc88f1063c156f94bb7823ad221ecea62b6b3b4a3597cb6c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3767/magpie-cli-linux-amd64"
      sha256 "788e1b5296b4d31c29f93a5960979c130ec34cbad58c4e831d4e2946e8257890"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
