class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3818/magpie-cli-darwin-arm64"
      sha256 "042161eea69c78af6235d636802a3b9a2a22194ab4fbe351a33843e4d9d94f3b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3818/magpie-cli-darwin-amd64"
      sha256 "8001e64e7aa5c8a9e945e1acba1b4c79b8b3e94906f2dbf0e57df239d2f641c2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3818/magpie-cli-linux-arm64"
      sha256 "693b3793ebc71444289181905dfc50778937ac7fc9b2e786277c7c659fbaf52d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3818/magpie-cli-linux-amd64"
      sha256 "d352de9b45755f7e9bbb1af217fa3313aa15b88f5e8cbc052dadc953c392ff2a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
