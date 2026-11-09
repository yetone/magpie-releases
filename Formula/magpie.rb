class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3428/magpie-cli-darwin-arm64"
      sha256 "9d0f0e1832173d37d15dbfe5c886379a949bee2bb25521ee4d7f7b9f2dfb809f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3428/magpie-cli-darwin-amd64"
      sha256 "68200ac2836d156a5859c9737b91977c501ba1f520602372496f89745c3958c6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3428/magpie-cli-linux-arm64"
      sha256 "575d19da29a6a228d31784bbe3c78d450f0ae9cf656e147a8c753aaa6cf2fc10"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3428/magpie-cli-linux-amd64"
      sha256 "b55468fbad9158705728f82e51414d5c9d40f5c9ea7d627386d4985fa516852d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
