class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2312/magpie-cli-darwin-arm64"
      sha256 "206483d866cc25d8fcafcefcb906f61a034ddbd7261d1c786b79c6ccf54e7be7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2312/magpie-cli-darwin-amd64"
      sha256 "d9a6d7e84521073b74bece450abbeca4e7e2734b3dc4c4e730766781e5c39692"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2312/magpie-cli-linux-arm64"
      sha256 "3e6508ee59e3cdd784da22bd19dbf6170ae07cb817f9e4677ab72e7f04f5aef3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2312/magpie-cli-linux-amd64"
      sha256 "3a1b377b43738723ee1147b50ae8b4d6f460d7e3738cd642a9840a13b92e2dcc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
