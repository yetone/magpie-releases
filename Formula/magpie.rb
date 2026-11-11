class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3704/magpie-cli-darwin-arm64"
      sha256 "3a8df6206b9fd7e12477644a2656805fc95a4b7fcc2315ae58064306e664a049"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3704/magpie-cli-darwin-amd64"
      sha256 "8431e135b09198816ec0ceb975de3291b260702116fb6c2e4cd581966a85181c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3704/magpie-cli-linux-arm64"
      sha256 "71def376d6793cd6b01a25c02ac5e908fbd93e5672f55413a0d11b9ecf440da5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3704/magpie-cli-linux-amd64"
      sha256 "ddae59038a3d8c2c4fc60382f0876bbfb019412f9a4114fa9b8dc896edd2e034"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
