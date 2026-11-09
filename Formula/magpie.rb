class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3392/magpie-cli-darwin-arm64"
      sha256 "0a028632a35430b9ec908ca623f81827016acbb41a02ea22803ea488b3537c0b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3392/magpie-cli-darwin-amd64"
      sha256 "1dc0d232dda2c4fe3f358b25ddc5d8de63b50a4e43a6fee6a66610b3c6ece434"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3392/magpie-cli-linux-arm64"
      sha256 "64423aee8ba840c541420784a7e6980c7751529ac28154ed0c1314634ddab22e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3392/magpie-cli-linux-amd64"
      sha256 "a00278d2b2f74cd389057d1ef7e5ffcd72ed86e85e0003de42e8f57322965d07"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
