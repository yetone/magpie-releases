class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4114/magpie-cli-darwin-arm64"
      sha256 "79e1032d01ddbde362d0db47acda12142f9a7c9d8019fce49b0a16a547cd211f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4114/magpie-cli-darwin-amd64"
      sha256 "855478ff7a94d734f9e02cdddcddfa57e281feb9fe2baa052339547541c0ff9d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4114/magpie-cli-linux-arm64"
      sha256 "00bc12b334b9ab9dd7065c5ec12d7808137bcb2ac19f4b77b83416ea2a1663a0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4114/magpie-cli-linux-amd64"
      sha256 "2518bf96c7cec017c5c779da6a1e4e4c37ff93e170bf646ca8f9d5f6afe6507c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
