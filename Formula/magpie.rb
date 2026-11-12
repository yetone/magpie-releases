class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3952/magpie-cli-darwin-arm64"
      sha256 "e5745446093a1cd8ca0dbc8b5f783bd7170a4956a904328ccad15e2155a7877d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3952/magpie-cli-darwin-amd64"
      sha256 "79b0e0c3abdefe8f555e3dccaee77cda6a66fad85d85c345689dd3a8c18bd4bc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3952/magpie-cli-linux-arm64"
      sha256 "416c4ce6d1b6559e9d01357c2ab69089a5d2f045cadd58d8dc6d0f2e43bc8220"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3952/magpie-cli-linux-amd64"
      sha256 "063c393a4014e28d2d97d0494b18ec1e78ef3cf6e53470e111ca58d4b866b843"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
