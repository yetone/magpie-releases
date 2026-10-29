class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1997/magpie-cli-darwin-arm64"
      sha256 "eb210b18c9a13f43bebd4985fe02d1b12036369f88fff2c77f889e8bf115e757"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1997/magpie-cli-darwin-amd64"
      sha256 "94b52dd23cb30e5d733bac16e6facc2adee02a2566de10dc733c8ecb29b370ce"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1997/magpie-cli-linux-arm64"
      sha256 "de609353f63cb4c9b0e39f415d6b3e6cf680d277f2f5e3de764f2494dd3456ed"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1997/magpie-cli-linux-amd64"
      sha256 "23ea139125720d9fe59982354230b3af5336cdc78662eb7eec2254bd662d96f1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
