class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4223/magpie-cli-darwin-arm64"
      sha256 "45b39dfe3afec648df38dbb5863b197095379b8f4347a6ccfe211cca56a667c3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4223/magpie-cli-darwin-amd64"
      sha256 "8da50bd79bea8554121710d7b72b7ed8e24e583bd5d3e0cecc0f06939d494db5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4223/magpie-cli-linux-arm64"
      sha256 "1d6c0f891e8ed979ec9b889e7441330b3b5c6c244c71833517fd30b16d18af01"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4223/magpie-cli-linux-amd64"
      sha256 "e1baf3846da03dda9954f561e082eeb8c86f0ad8a72c36d79118be67c3e145b7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
