class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2102/magpie-cli-darwin-arm64"
      sha256 "fc73c9664acadcef9fcca3d9073ed17ae4ccc2358fd6b1ea6ece9b54bf833012"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2102/magpie-cli-darwin-amd64"
      sha256 "b8201af85fff0237f01ae5522607b54467c453ba83bdba83fe8e743726b6962d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2102/magpie-cli-linux-arm64"
      sha256 "b0d89b4ead5a3834030153f2464240e14b3cebe4f1c4d37f44f4847a58e1035e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2102/magpie-cli-linux-amd64"
      sha256 "cb3410d383d540e08b2e009ec1754c45aea4a3ff010bd9898cfc8d9b5d0cb9aa"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
