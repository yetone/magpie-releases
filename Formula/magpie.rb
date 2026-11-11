class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3799/magpie-cli-darwin-arm64"
      sha256 "f530d56e64c81a8009ab0d6df662ccd1fa871956cf12dc4aa5028623cf5d1d28"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3799/magpie-cli-darwin-amd64"
      sha256 "3464794ae809011672cd6d77d843151988177ed71689339ffde845bfba745d3a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3799/magpie-cli-linux-arm64"
      sha256 "3f85f2f49f9a1c293b1f3d4305be523b2ed84a4450f3797803968a8f945aa5b8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3799/magpie-cli-linux-amd64"
      sha256 "ab34febe3d82302b419d0454d0457c85da5609c8fbf3623a9a36c08c8cb7fa2f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
