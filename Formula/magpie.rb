class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2141/magpie-cli-darwin-arm64"
      sha256 "9b6d64ea0fb62a511536012bc849036feb31cab16078e42a4450be42e3c0c328"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2141/magpie-cli-darwin-amd64"
      sha256 "454fa21d1224286fd73c3912ad814b20f0594270bb73057f50bbd0acafef52fa"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2141/magpie-cli-linux-arm64"
      sha256 "3e6eb6c0c59710f82f36ff2d5ad6d56b22e84ccf8e5bc277a5deda6261a1ae18"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2141/magpie-cli-linux-amd64"
      sha256 "cdfa59812874ee55f9df87b9257a2e25da31de235c21f1558248e48451f86d62"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
