class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2504/magpie-cli-darwin-arm64"
      sha256 "41d5c967081e1c3cbea5da78534b9ef27a8496c944513abb795b16a8506f9a17"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2504/magpie-cli-darwin-amd64"
      sha256 "b227909e4a941d3aa706b7c45ca97861b32e1364e99a259e8d3b3213f01d978b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2504/magpie-cli-linux-arm64"
      sha256 "8cb4400aa9c2c7755e7e5da1703571831aae8930b4457c97fe5f6d6699e75805"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2504/magpie-cli-linux-amd64"
      sha256 "2b98bd0cc997a5f18aa80bafb2b684d1c1554898c92949ccb652e7835d6752f3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
