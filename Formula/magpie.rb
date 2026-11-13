class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3981/magpie-cli-darwin-arm64"
      sha256 "44018b2c623563f55ec688ef2ff48612ecafea7ad720dc26420a3957b1102c6e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3981/magpie-cli-darwin-amd64"
      sha256 "771a305b6ecb633c0638777491e02c58f390452625a9732da1501ad63fde2e9c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3981/magpie-cli-linux-arm64"
      sha256 "56a04d0f792de2d46b9fcd48cc8c863665711b64bdb90b01c44dabee82fb2a49"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3981/magpie-cli-linux-amd64"
      sha256 "9897babe19536197d9a2b0a20be37f53aa36b6ba841c15785d71c41a5423e2c4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
