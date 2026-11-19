class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4549/magpie-cli-darwin-arm64"
      sha256 "376b1debd8927f1f538508dcc9c92dac7092f9e61080e0acd28bf0701f59e8dd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4549/magpie-cli-darwin-amd64"
      sha256 "6ad295ee51440262a350570cbabf32c3bbe4eb6adead24633e1d8302e2570206"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4549/magpie-cli-linux-arm64"
      sha256 "27515d02c21b683fd880bb7eb766883cb2b2f96ed8a8a9244c8e68dd474e92b2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4549/magpie-cli-linux-amd64"
      sha256 "727284dac9e9b53d5cc7a1d0fbff7def61a00ccbf2c564b862f5539e3d7c675f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
