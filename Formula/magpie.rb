class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4393/magpie-cli-darwin-arm64"
      sha256 "7b4a1aed0c22f4122e685cb6f0f81d10bf93870b08884e205946cfee9a0003ef"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4393/magpie-cli-darwin-amd64"
      sha256 "0f0ecf576329faeab4f419bf26901c8a8f2fb04ba93464d8665d3a5113d89451"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4393/magpie-cli-linux-arm64"
      sha256 "ed4385281df966c8e445ae4487e8800cda81c835c34d722ff5d3bc18d934c05e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4393/magpie-cli-linux-amd64"
      sha256 "ebe9a978589de841401591486fc86384b043ad52889f4b6b6d73db472d4cc525"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
