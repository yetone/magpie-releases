class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3476/magpie-cli-darwin-arm64"
      sha256 "b01d2f792f9e3a2337dd306f8dd2cf3e600e4dd0ae3e9c20c1da42fdf0021012"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3476/magpie-cli-darwin-amd64"
      sha256 "11cd14ac6ae08a73f8f50a440dc0801e60141f39e59e46f183d0326b2a765736"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3476/magpie-cli-linux-arm64"
      sha256 "86adaf80957ca253989040da6dec63e10e81c263c8b3deafa1bb946d996845b1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3476/magpie-cli-linux-amd64"
      sha256 "e43221481ec41db02f3d6a91f026e7d0fc486c79b70d9d83a89294013684330c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
