class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4609/magpie-cli-darwin-arm64"
      sha256 "25db8e4759e913d0124f0cc5449ebf281e475d905b8dfc30bad6b97674919a8c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4609/magpie-cli-darwin-amd64"
      sha256 "470af61ed0bbe0c6d5360c7afe361017d81acf01ae73197adacea6344c6004d9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4609/magpie-cli-linux-arm64"
      sha256 "b228805ed59948c53801319aab916f3be0acb645f9ab3cd31702bccb12368009"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4609/magpie-cli-linux-amd64"
      sha256 "069ccd2c56e6e979d52acd292b79af3efc205d20ea059e124cfc2c9b67ce2c2a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
