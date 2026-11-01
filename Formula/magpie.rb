class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2593/magpie-cli-darwin-arm64"
      sha256 "4c32fe68a03bcb558206f73120f3de2d07538b38c71b00396f8fdb30563a8485"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2593/magpie-cli-darwin-amd64"
      sha256 "d7e8f7b60dba7adcbd3d11d9cc43eb7d6b2fe87933f7468f1cf22505a70ed63f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2593/magpie-cli-linux-arm64"
      sha256 "3e963fdd3a1c9aa1e8884a5a9e204333e2d3fc38205ca50b600dccadb53ecae5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2593/magpie-cli-linux-amd64"
      sha256 "4737ff0bf7a943aac21973f6bc97fd0fb83489e297d31afdad52a9747a75cb9a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
