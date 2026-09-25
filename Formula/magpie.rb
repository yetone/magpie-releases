class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.86/magpie-cli-darwin-arm64"
      sha256 "01ff6a218bf3133807a9f02660efb1c197c552f678a4890d80cb09c4d575024c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.86/magpie-cli-darwin-amd64"
      sha256 "b8b195deda77c4a437c5e02d705bef136b5ecf068aca0d03c8a7f029d594b0ec"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.86/magpie-cli-linux-arm64"
      sha256 "bb99036cf45bc90ab10e624ec6329747247689faa4e24030b13d152ef796809c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.86/magpie-cli-linux-amd64"
      sha256 "7788197d5d8d6531502c1a6ab1e08f17e7762e142387a944e6af2773d8040b53"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
