class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4714/magpie-cli-darwin-arm64"
      sha256 "c48d6ce3c6316cdf565d368a1e41c1e1a6ef1246ba07d2e004972c2b74b09778"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4714/magpie-cli-darwin-amd64"
      sha256 "628718e1cb000be64ccae4c6f2e5866c4404c41ee3e840cac093f9ce394c4fc6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4714/magpie-cli-linux-arm64"
      sha256 "5f4b7e93640301bd502f12a0f08761bb7f998c597cfce0d5ab98f8ff107d263b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4714/magpie-cli-linux-amd64"
      sha256 "0df012460ca6311313bdb35a30b7a763bcebbde7bffd9d1326965de327c417c4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
