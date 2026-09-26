class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.125/magpie-cli-darwin-arm64"
      sha256 "e4516ded9fd34917139f020ca51c3a7bfb305c86cbf5b089900ae28ede0a2ab4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.125/magpie-cli-darwin-amd64"
      sha256 "6ca06f5aa48cc773c5a06bf0e2942eb1b285ee723da28d513e69079703198db7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.125/magpie-cli-linux-arm64"
      sha256 "34500a3d40bdbb615349f23486f20119dcefbba8d164e716e0d3387ea1a4eaaa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.125/magpie-cli-linux-amd64"
      sha256 "44485f417cac98a98aea6bcc29f3f8048e9befe6dd397455a3ba5513869c4c2c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
