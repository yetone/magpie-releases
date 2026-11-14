class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4151/magpie-cli-darwin-arm64"
      sha256 "4c5424c6d026bb23cc744570ac7bf1c5f30209663ba21f4644b7d17e08750c2f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4151/magpie-cli-darwin-amd64"
      sha256 "67727d1a2d091448e002c3cb94dc88a7b86a7cb9a39194e78f71e59dd6fa2f59"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4151/magpie-cli-linux-arm64"
      sha256 "cf627d7c11d363397be5e96a4df99aae1e948da5a435b464750b4ff50773f967"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4151/magpie-cli-linux-amd64"
      sha256 "1d8777048c551394cbdc12bacc70c80cc9b1687cad6bc3b602e84108f40b4eb1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
