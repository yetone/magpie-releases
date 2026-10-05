class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1063/magpie-cli-darwin-arm64"
      sha256 "ab24b6ad5fe8bbb22d4e892c31ba20964c0cc58c2162b2ff730abe65dcd5cf7e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1063/magpie-cli-darwin-amd64"
      sha256 "a675ca6ed7f38756e9ea28f12f4bdb98dd7278727a989f992aa5ef3ac2a17e31"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1063/magpie-cli-linux-arm64"
      sha256 "f7256c4777c1928817517e401f2a3ab776cb8f32681be129b2cb5b86f4fdb59c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1063/magpie-cli-linux-amd64"
      sha256 "a5efb3b5a8f0f63ee71f2574276aa7495ff51d8f1b2c5de848176e737938a52d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
