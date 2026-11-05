class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3040/magpie-cli-darwin-arm64"
      sha256 "a7634c222072fa145ac9908685c7b30f12796fb5bcee59127529cb2a1bc3e037"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3040/magpie-cli-darwin-amd64"
      sha256 "bfe378469904b347faccfed2e4888c08043cfa9fe5bc5684f37316b2f918ce06"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3040/magpie-cli-linux-arm64"
      sha256 "0b43ab29c878992dc64a5150d68f11aaa78d8a701f81c31d868c79a3d15ec784"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3040/magpie-cli-linux-amd64"
      sha256 "076cdb034d963324c384f2917f751a814dff0ca24c6d9e2a6a5a84185ea1f387"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
