class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3189/magpie-cli-darwin-arm64"
      sha256 "18bb4d12d0dc4cbe67c61f1e01ad9ef8c8f7ba8a7f7bf9c151f2138c3a66d6d6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3189/magpie-cli-darwin-amd64"
      sha256 "4ad2374e36bf57ee1e0b65b9e2ca59a252449c60b9d5b056e41bd38361372d4e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3189/magpie-cli-linux-arm64"
      sha256 "1866cda29692163e859476d1149703f66153b14cba7a1d2680492ca91f316b61"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3189/magpie-cli-linux-amd64"
      sha256 "89f70c3d827df5323154ff38194af1b893656eda8e7471c540150ecf805ee298"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
