class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4478/magpie-cli-darwin-arm64"
      sha256 "e4279784d25734b1cb4112937be51c0c2be615e6fb0e54c0243e345236ffb8dd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4478/magpie-cli-darwin-amd64"
      sha256 "2b4f4bde0ab268e2e89f50e7d3e3597302c37770c2aa87750b3f77ca87c33088"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4478/magpie-cli-linux-arm64"
      sha256 "2edcb3f5ca46cc0b7ec588f5cf7f0f2b4209502962f9bb4d7d8abbacd0806d5c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4478/magpie-cli-linux-amd64"
      sha256 "7392a01c12222a990cdbffdbcad4e1b1024a185b1f0a90efe1ebd43efc405e29"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
