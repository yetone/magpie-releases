class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3286/magpie-cli-darwin-arm64"
      sha256 "e6f4156a7ca58f049f18bd908e297964fd2d0b347e2dfb56afdb6b3b55b93c9c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3286/magpie-cli-darwin-amd64"
      sha256 "b2904fa55ba399aad03e38ac196b179473da75bb027653b3e775a5e8de021a62"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3286/magpie-cli-linux-arm64"
      sha256 "3ea52928d163f1f497f20f6fc4a3bb1438cfcd1c11fc5e1663e2ab3d24236a4f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3286/magpie-cli-linux-amd64"
      sha256 "5d7c41ff98293929309baf684042ea48d3785f81e0c5077c4e28c0cc6fc34593"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
