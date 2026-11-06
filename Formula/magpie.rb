class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3115/magpie-cli-darwin-arm64"
      sha256 "ae6af563a98bfa16ece3344669635d6539c02b76886cdb5d12d6b944e41b6b87"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3115/magpie-cli-darwin-amd64"
      sha256 "7839363907ac6e2d7c97fbe418a310b1cb076078a00644ab1eb79f81b413615c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3115/magpie-cli-linux-arm64"
      sha256 "4cfd4c6635fea8eace40797927ef069104352a77ae83e82b75426dcd4ce5e7a6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3115/magpie-cli-linux-amd64"
      sha256 "5a2744060d8f8e16c3a84cf88b089eeee80c5ce8a4a923bf1661aeb574a5281f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
