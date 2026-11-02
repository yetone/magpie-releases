class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2688/magpie-cli-darwin-arm64"
      sha256 "f5c44ece15839466a6cff8b539b26ca37be6adb09ec9f5435bcfc04b5903d865"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2688/magpie-cli-darwin-amd64"
      sha256 "2d8dc6cfe8303802a12c178170c303dab4a5cd117c98951daa27f22c6fb08fe0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2688/magpie-cli-linux-arm64"
      sha256 "7bb51a99e4957be5d27a57abcaf68f85a772461af1925b78d81d1bd9c08f8c9d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2688/magpie-cli-linux-amd64"
      sha256 "2acdd062f44cc99692d46da80c6e688bf383894dd0f1c1d4e6740fac8dd2816a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
