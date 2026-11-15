class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4260/magpie-cli-darwin-arm64"
      sha256 "b04c0c9169679cf37464e08ee8f82195b983c8e28e03f1d22a8bccd04200de87"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4260/magpie-cli-darwin-amd64"
      sha256 "d4b4b7302bcdbe327fbc9b18a4599240d726ff257c4f28970d616cc5ab596771"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4260/magpie-cli-linux-arm64"
      sha256 "f9c7f162d687c2aac992c8dad1b0dab6ed011f4ad4a726650fcbf71899765fe6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4260/magpie-cli-linux-amd64"
      sha256 "2aaa60cf87f28eef664fb7899980101a06c0a2164ff9aaf85bf2b591c6065109"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
