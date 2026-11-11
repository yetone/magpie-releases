class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3745/magpie-cli-darwin-arm64"
      sha256 "22669353a811334f2cd41e2ebd124f15dcbf5f52898f944561c5b27c42d00ad1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3745/magpie-cli-darwin-amd64"
      sha256 "06e8e3d791e250c9618f7c9ba0f9a7a308d96f27a996902bbf67eb6f39925ec4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3745/magpie-cli-linux-arm64"
      sha256 "b2af37c312a2d677d67184978193c239d75c747be92aeb9f8ecdb1a2aee065bb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3745/magpie-cli-linux-amd64"
      sha256 "f2d863c41689d2c43ca7949ce87f9b03a126309bfe4b9991f1e6258e17badb53"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
