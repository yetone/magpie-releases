class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4806/magpie-cli-darwin-arm64"
      sha256 "36a87cecca6b90a2792fd2f16b587438d32ea17cb32ca20d52de4090db6a8c3d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4806/magpie-cli-darwin-amd64"
      sha256 "0f3531e02635e411129a2ae1f5cbcdef22c5f573eae3409bd490c1567d42a3d1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4806/magpie-cli-linux-arm64"
      sha256 "abec08be04d5ff88af3e6cb91d4d836f9a13600fe087fd4f44f79a9b0803f051"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4806/magpie-cli-linux-amd64"
      sha256 "3fe248333c8aad5edc5b6e16345f5f1473e341482af0ee2bfe24ca8edf817f64"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
