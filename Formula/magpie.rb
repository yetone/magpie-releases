class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4790/magpie-cli-darwin-arm64"
      sha256 "52592a20d648e430c3fce3f699b03f301d831df9ca9d295429d4d9d90c9cbc0f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4790/magpie-cli-darwin-amd64"
      sha256 "f4342aebd7a46dc7845c43d52810c3f438aac0b943d1c416856c3b037bde9ab2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4790/magpie-cli-linux-arm64"
      sha256 "3131eb4e29c52fb114d17054185a64cb5c36a490da3329ec4d1716bbe96acb23"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4790/magpie-cli-linux-amd64"
      sha256 "de20ab44052d43f15f8d766b36aeca6497f5deed1790299f070cd53486a95661"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
