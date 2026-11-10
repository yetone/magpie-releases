class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3555/magpie-cli-darwin-arm64"
      sha256 "48e377bd0354282f7807a1bf72edbf95ef9133be1f314f164a103b93db4f98cf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3555/magpie-cli-darwin-amd64"
      sha256 "5accbcb2fe3f3bbcda7db8efefc855a4031c2ee7c426700cf91d6e188630d025"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3555/magpie-cli-linux-arm64"
      sha256 "6c30cf3bfc26cc994893f8d55896802ac318b91a12a4913d6e3d9f9a74332eee"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3555/magpie-cli-linux-amd64"
      sha256 "7cec62b56c6c789f914ac8744d30d5c862ee3713ebaf9f966aebcdf35120da20"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
