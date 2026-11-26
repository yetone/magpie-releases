class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4832/magpie-cli-darwin-arm64"
      sha256 "c4e24f24fee1557cd7f149110c59bc2751292ee3b33ffe861f5533005ed913a4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4832/magpie-cli-darwin-amd64"
      sha256 "45c989d11d99da190ba9291fecd2cf7375330d7cdca075cfb4bb31a1758c87ad"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4832/magpie-cli-linux-arm64"
      sha256 "a11efd52fb0c93dd81976bff6c8a01ab5806f51c59dca82b72bb884902b06d47"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4832/magpie-cli-linux-amd64"
      sha256 "02e44a1bcb4686585cee5485f9ab65b5dd8900ecefbcf556bb1897060fa183fc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
