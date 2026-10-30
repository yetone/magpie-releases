class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2179/magpie-cli-darwin-arm64"
      sha256 "66843dfdbb6e82964f4ef67ea891ec0734f7f6a2a6b8ecb8a39cb2a2ab5686a8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2179/magpie-cli-darwin-amd64"
      sha256 "a0c0ddbcf842bd9011b93fa66e046b91ea065baf938ac2c9bca678eb2985e007"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2179/magpie-cli-linux-arm64"
      sha256 "d6f37b213eefa1b920fb07e3efa028ef81d737a9192d4a999facb1da68ff80e4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2179/magpie-cli-linux-amd64"
      sha256 "f198ab07c48e8a8e0b2ac9765248463f67a0e11772e95b291ada66014a876c9c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
