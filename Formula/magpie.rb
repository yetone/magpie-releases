class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.952/magpie-cli-darwin-arm64"
      sha256 "a736378cbd29d54f81f175b824d3f84927ac0de16941978686e3b4e970c0d87e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.952/magpie-cli-darwin-amd64"
      sha256 "387ec222ae7f5edff83c423b38d12786ebf7d8e3cedc9d8efb9617f364aabedf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.952/magpie-cli-linux-arm64"
      sha256 "fce31aa20c9d97192f2ac29a0c55216e4bc7cad51c3e27e09a1f2bb3220e6064"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.952/magpie-cli-linux-amd64"
      sha256 "5678a04f956a5c51949c3b29cd8ef8cc838a9a23571b09fb2593bec4f9964515"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
