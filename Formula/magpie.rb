class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4228/magpie-cli-darwin-arm64"
      sha256 "83a41aa895fa122c34e6fb8cf2f6418d5c08d89f8c493e12ed1af5e4ffe47f4c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4228/magpie-cli-darwin-amd64"
      sha256 "b405422b81baa907356eb4958d55cd071aa3f79bbff18cac18140effe9f35434"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4228/magpie-cli-linux-arm64"
      sha256 "8b986b5154a700028014c1fca1eceeb249cb62d953aeec7ae8b880a98bd1f20a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4228/magpie-cli-linux-amd64"
      sha256 "1841bcf78b6e51a2180ebc234e8eb1efb888b4d7c67a91e81c95d40a929655e8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
