class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1940/magpie-cli-darwin-arm64"
      sha256 "4b6c43a69cd251e0b0b52f13a749c365f0a2508887f4651ab9c8d0327f979173"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1940/magpie-cli-darwin-amd64"
      sha256 "02a5412adeb49f77d3a22bbc7e6e1972f5b34f422853a2f069ceafa4fcf224e6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1940/magpie-cli-linux-arm64"
      sha256 "c2380f2a2802aae0c79dff66d4e5ae4f54fc2c03a4f002e5825deed3a3bf2851"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1940/magpie-cli-linux-amd64"
      sha256 "aef35adabeaccfe00e02e88b93b04e46c258792abd5e8de92206174654469ffb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
