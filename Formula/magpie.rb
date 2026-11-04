class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2976/magpie-cli-darwin-arm64"
      sha256 "bc801379f653c75f42e4e70fbd84194afc609beea8582ac38972bfdc1267230a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2976/magpie-cli-darwin-amd64"
      sha256 "e3b44eea1ec06df7ad4ba3150a1610dc567dd01fc5565061c1ed657a1b479c8f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2976/magpie-cli-linux-arm64"
      sha256 "302d804eca1d7eb3511660f0905ec7156f9b69060f7f92940659815da20b74fb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2976/magpie-cli-linux-amd64"
      sha256 "eae36d00329ee3a115f7c6c5b50e6a22d1d366ef1a36f9e3c6dddde2c85d5471"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
