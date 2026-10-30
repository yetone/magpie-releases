class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2166/magpie-cli-darwin-arm64"
      sha256 "82bd8c29122cd7ee96b44c6dfa60d1ea9b6ec1396bfe8801812b46bd3e996477"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2166/magpie-cli-darwin-amd64"
      sha256 "6754fa26a91cf3900922d623af63631c58ac393bf4e26e11175aeae3b4fdac9f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2166/magpie-cli-linux-arm64"
      sha256 "602696b5e98c6f48617283694e13c03b6ba4f60b7a48fc71a7e32711b148f209"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2166/magpie-cli-linux-amd64"
      sha256 "68b3578133ccdb788bf75f9bb10b41a5a25630d87b2341e1decf605856db6a52"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
