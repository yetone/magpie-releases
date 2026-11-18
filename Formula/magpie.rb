class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4470/magpie-cli-darwin-arm64"
      sha256 "5c4ffb953aaa376c6a144a5d498cd5bd3425c2321099601a626de2c70b4a3518"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4470/magpie-cli-darwin-amd64"
      sha256 "87bb1d0ffa59929aa41f9b15b896dbbbf15145b99ee25f902d56c45f261d63ce"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4470/magpie-cli-linux-arm64"
      sha256 "555ef4005bb3ea133a1664f81dcacab2b239496372297846de669eda4d585fcd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4470/magpie-cli-linux-amd64"
      sha256 "510d125a6bfee5dd6dd0ce83a8d02b0d07543168520bcc2b199cf0c922f54550"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
