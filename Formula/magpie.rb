class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3787/magpie-cli-darwin-arm64"
      sha256 "6dc91dae689a1e559b7246a8c2ec0eed0c6e7f0e6ed8fb9a8f597cdbf829651f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3787/magpie-cli-darwin-amd64"
      sha256 "419313f28b62e041fb51eeff58dc2ea0cb3a0fafc818b7ea38f572a4af4bb266"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3787/magpie-cli-linux-arm64"
      sha256 "b0be2cceecea1ca552ebd252eda056dd927e336c4a53fe70db4e54f02c3d205f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3787/magpie-cli-linux-amd64"
      sha256 "0614d344ae6df7d6d04b00181dd34a872c529425147e691e16da1fe67d6f5f31"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
