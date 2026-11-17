class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4374/magpie-cli-darwin-arm64"
      sha256 "03eaf05e04713d13ebeb55209e7814b09a9dd31a69016720c4ae92e03f3f09ab"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4374/magpie-cli-darwin-amd64"
      sha256 "35e4b30682f0242eab321da897fb930be97dd632a3bd98ea75245e14e9a1dc79"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4374/magpie-cli-linux-arm64"
      sha256 "67ecc2559f1af32ff26cce93bc383aa87f1e4982b5776a730ab7e71628534a0d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4374/magpie-cli-linux-amd64"
      sha256 "37723ef506fcd1d93617c5623b0d5614dc994f74451b59a287f8c0031b946d27"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
