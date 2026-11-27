class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4975/magpie-cli-darwin-arm64"
      sha256 "ed51931257deb2b4f720cf4a8784ec0f8c7767fd49ea0918c18451c7d0b4a1e0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4975/magpie-cli-darwin-amd64"
      sha256 "45cbb9cc775a3553ef5579edd125f50e27ec09c58b3e0474a4cfb915ef101238"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4975/magpie-cli-linux-arm64"
      sha256 "d7b91d80a5173335b9b62e4acd4d80a1deed17173e68417b6f76817118758ed0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4975/magpie-cli-linux-amd64"
      sha256 "9c8b7829afc2b803e83ebae34303598eb4b9384920668894fcef7a240b6710ad"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
