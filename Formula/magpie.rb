class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4853/magpie-cli-darwin-arm64"
      sha256 "88acf542257f7d579701b8cc4fdb82155bf4a602b9555d0020bfddd3c1908f3d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4853/magpie-cli-darwin-amd64"
      sha256 "7e3a4305098346f7c2b94d501a02293e9ab14f1fb007c98618ef234caac1f119"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4853/magpie-cli-linux-arm64"
      sha256 "89271682243265eec684df5feca6972cf44e0d82b09aad9c70c8981d1e8bf5cb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4853/magpie-cli-linux-amd64"
      sha256 "7ef16da6e1652eb77a7ba6cdafc62fd2f8b7a340a5a71e8df4ab17e6657ed42f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
