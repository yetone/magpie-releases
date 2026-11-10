class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3623/magpie-cli-darwin-arm64"
      sha256 "d395cc969c5788ac7d9cf42535d4c752727238d73a9cfd86416c3bc1578ab101"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3623/magpie-cli-darwin-amd64"
      sha256 "d7c092cc943385d396fa7c468e6f9e4947a84b361b72dabbf57c98677f46b3fd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3623/magpie-cli-linux-arm64"
      sha256 "a0472c7e48eab4aa547956d6fce8cff527534b0281f2728c2890bcac736b8962"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3623/magpie-cli-linux-amd64"
      sha256 "89325666d72428c507e43938153ce5960697d3a5536baae8fcc02ca86d0f4e99"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
