class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1055/magpie-cli-darwin-arm64"
      sha256 "99fbbada1dcc9ff8ddee3067c93a371a9a7d91622d2162d6426738be766dd50c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1055/magpie-cli-darwin-amd64"
      sha256 "a4e204ac328740b388b91411b415fa848fdd3fc2eead9886a5415d8b7690ee23"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1055/magpie-cli-linux-arm64"
      sha256 "aad20fca2758f760a46acccebd013bebbb6c091e4a559d4e6799bea4fa29cef9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1055/magpie-cli-linux-amd64"
      sha256 "4bb43d3f7f7d5eaf175b0d7456fb6f72ed14faa2b9a214d4fe4f38065191075c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
