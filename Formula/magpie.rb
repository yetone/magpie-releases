class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3492/magpie-cli-darwin-arm64"
      sha256 "3350e0ba897c67b727e37279a034f1fa762255efae0da6d86cde764dbbffc5b8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3492/magpie-cli-darwin-amd64"
      sha256 "45012b82b604a316bf3b58f6d9e8aa74561ab2741f025c9319af527bc800398e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3492/magpie-cli-linux-arm64"
      sha256 "5f88139ce7519ad58505a68c9a5cd23984caa5ecd7c18c4ad98f272b066c2d97"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3492/magpie-cli-linux-amd64"
      sha256 "6e5e8853b91831cd8facb9125a43986c33ecaafd4523f8829ce68bb2e2cffc1d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
