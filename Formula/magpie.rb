class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2734/magpie-cli-darwin-arm64"
      sha256 "51e5502ca1a897a8df5ea811beec45f954e383181a3aa92931472a16853fed26"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2734/magpie-cli-darwin-amd64"
      sha256 "1cce203e4c35647294f97aefffac0f3d99b459088b6db9dc36bfa4c1713dae22"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2734/magpie-cli-linux-arm64"
      sha256 "94b0a9cfc3b266c5e14734841a2ca6cecb139e45d986b9c1c35b55615f83fb2e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2734/magpie-cli-linux-amd64"
      sha256 "bf704796ca18d5d4f6b5bcb3db4b0a291352ffb20279638a9adb6921f34c7046"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
