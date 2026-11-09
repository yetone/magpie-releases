class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3356/magpie-cli-darwin-arm64"
      sha256 "12f7f89c1699859fc12d246f9a32709f12a9a8f802db872ab1a8e3369aa10f36"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3356/magpie-cli-darwin-amd64"
      sha256 "42120ad354e6b71af38100086a99b47930051b0a1deeba7a44693c4e4f5dc4ba"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3356/magpie-cli-linux-arm64"
      sha256 "7f5760ea3a4aef490b63626f37cd45a90af25ef27c9c94a22588d1c2dd16e5d0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3356/magpie-cli-linux-amd64"
      sha256 "6a3c43feead0c6999711a855df66823a5c21593a10a2c291099c474c5eb756e4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
