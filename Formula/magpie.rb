class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2206/magpie-cli-darwin-arm64"
      sha256 "ee907f8600237752276518d071f23ebc51cfa63606db910c61e13b79e622cb47"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2206/magpie-cli-darwin-amd64"
      sha256 "918e1c62382e9cb971d79113300b17e2c85a91261f2e8823d9675eb982a24453"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2206/magpie-cli-linux-arm64"
      sha256 "543a339186c2607ceaf076b90602c306a04fd94d4401f16fdac9bbb45417b2fe"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2206/magpie-cli-linux-amd64"
      sha256 "f2b70a6a4a68cb3583fb23c19a044932afd1d9efb9e1e4010b284fffa0f191b2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
