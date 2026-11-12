class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3933/magpie-cli-darwin-arm64"
      sha256 "235c7acf698dcb6ebafd39402bfd2c12c1658600ae7046ac6b453a057484c30f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3933/magpie-cli-darwin-amd64"
      sha256 "8c082446084885fda7997ddd467de46af667edbf306f0e78999130aec7ab7945"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3933/magpie-cli-linux-arm64"
      sha256 "71d538cc5891ca52c2ceb912ad8ec10a34351b0f2b04ad89483d2e8ef7e6d054"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3933/magpie-cli-linux-amd64"
      sha256 "16616a0355deecd2028d804a9733f3f1890f6fce07b003ffaa7127a60fbd5685"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
