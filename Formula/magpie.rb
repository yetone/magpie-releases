class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2167/magpie-cli-darwin-arm64"
      sha256 "5c27d3c0fdfd00834bbad1e64026519c72f5ca9d06769f67d33046fa685b0e54"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2167/magpie-cli-darwin-amd64"
      sha256 "a7ca5a32c8560a85727b2d028385ea4df6d9b663f1be3bbaa94bb95d40d1683c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2167/magpie-cli-linux-arm64"
      sha256 "c044c0a5c0bdc85c5229e6ad32ef0732f2e430d9a9d40c09ec396aeaaca8997f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2167/magpie-cli-linux-amd64"
      sha256 "e78f1942b140b505ecad98699938bcc7be49fe266c97bb96b91f6b8ff27ab6f5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
