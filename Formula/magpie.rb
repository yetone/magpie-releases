class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3824/magpie-cli-darwin-arm64"
      sha256 "03f6d621711fc28abeaf23ef7e4e95bbd4912070be027e27117bc2890539105c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3824/magpie-cli-darwin-amd64"
      sha256 "8a1c3cf79ee9397a255003b3b8287147f6553ef86b6e2d65292e24be25e3b248"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3824/magpie-cli-linux-arm64"
      sha256 "557a04832e8b86ee1e620c09fa29b48bfb751914076196a197747a60953d5f7a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3824/magpie-cli-linux-amd64"
      sha256 "b9d45799c65864919bb1614fe68441b7d4f0b92d056ff328dedd2f41fc957bef"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
