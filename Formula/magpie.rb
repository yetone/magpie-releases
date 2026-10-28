class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1971/magpie-cli-darwin-arm64"
      sha256 "fe06821ddd17ba0b4afa29dc76990c78339d4cb793926c0157e12f35de40b207"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1971/magpie-cli-darwin-amd64"
      sha256 "5f9200294e483588b7bf2eed8344377bdabe55e8687a569ef388a58c83955a6b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1971/magpie-cli-linux-arm64"
      sha256 "4fa6853e98e583e19bf8dd9ec2721ce17ba58a22a72df6896fadd30792ad9576"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1971/magpie-cli-linux-amd64"
      sha256 "ff6afc62226b45db2903871ad61988675fb07ed28576bf2cdb632df5db0b535a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
