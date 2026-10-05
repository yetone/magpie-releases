class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.996/magpie-cli-darwin-arm64"
      sha256 "6cc6764fdd72c1f9fdea805726630554efce0be198b686fe5217b739becfffc2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.996/magpie-cli-darwin-amd64"
      sha256 "345f1dece81711f8b63feabcc03f0e516dbd24301e5f22ae4c1058d1122cd50c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.996/magpie-cli-linux-arm64"
      sha256 "4fef570a3e231b9f727ff19b797af145a26a228b4e74ba43c6663d7bf389e4e9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.996/magpie-cli-linux-amd64"
      sha256 "f5e8aa5fee602e8089a429bcd1382e734cdbf0a1432e0c919e04b96615840245"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
