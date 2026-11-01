class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2550/magpie-cli-darwin-arm64"
      sha256 "b52b0bb93e4519dffd94373b7c90e3721f04c15180110b407f075bb001ef8e62"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2550/magpie-cli-darwin-amd64"
      sha256 "09131aaa6c31a0f678c0a27792c36a41a2b5806f48cf00aaa35595a4290619f6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2550/magpie-cli-linux-arm64"
      sha256 "f29863bd6032c20ef8bd469e327e062e0152b339781561dd717f9ed8ce228134"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2550/magpie-cli-linux-amd64"
      sha256 "039b2391a64810be4fcfbf6c31ef9ccc9c06078c7b4412396bbf3959c2d77802"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
