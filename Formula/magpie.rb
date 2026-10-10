class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1166/magpie-cli-darwin-arm64"
      sha256 "8569d7541a75706079217c4dbf64dd9753d8b1b8c38fb6fc8529b42d184bc68f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1166/magpie-cli-darwin-amd64"
      sha256 "7ecd69634286cf8ddb4fcc3140b659b184a68e6951f219ee90d3c5bd67bac0d2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1166/magpie-cli-linux-arm64"
      sha256 "9345822973809b0f9c2c33d27f8d3305c458d114c13290db2d9c43347b4ff3fb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1166/magpie-cli-linux-amd64"
      sha256 "ba0314d05dcd3b8089f1f3b1478339a172bceda337ef7110ebcbe749e4bc7022"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
