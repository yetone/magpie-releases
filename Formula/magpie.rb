class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2383/magpie-cli-darwin-arm64"
      sha256 "fb983f864c167fe5cdb348cf8bb81df8655b6d2f369f5ad0143a6e0f845aa0f8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2383/magpie-cli-darwin-amd64"
      sha256 "3ad5f12193eef4e55804467efa352a62ceaa12dae9cdebb0d72bd55b65fb1961"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2383/magpie-cli-linux-arm64"
      sha256 "394338e9d676d02f228244e8b3b6713f44a4f3097b884a1b1abcd4546ac5159f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2383/magpie-cli-linux-amd64"
      sha256 "c746ab851421e77059081cfa17303607164b088b6e2ab6b4b5362beb603095cf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
