class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2235/magpie-cli-darwin-arm64"
      sha256 "f3fa1ccc38b606a42ff6bc1cf5f668c9625d55d589c7868297e0bcf50bcb05c9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2235/magpie-cli-darwin-amd64"
      sha256 "87bda492514a8840aa36b94c0510b5ce1e84ab9b4d4d3d68e8adf94600c4c776"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2235/magpie-cli-linux-arm64"
      sha256 "76da04b19956025e9a7f7c31125167a00e8cf38666cec878a4bcbb070bfca3e0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2235/magpie-cli-linux-amd64"
      sha256 "2ee6addd95ce5845102773934a86d8904a4c8718ce126aade2810e9839e1be10"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
