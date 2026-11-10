class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3574/magpie-cli-darwin-arm64"
      sha256 "5a96dfa0c6be20a74c67faed68cb4f6a710ea17dceadf310cf21a2f1d238a223"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3574/magpie-cli-darwin-amd64"
      sha256 "660ff20b598a1b4a878a34c1cfe15c8833e6f40b42cf9bd7fef1b2e88b5fcf5a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3574/magpie-cli-linux-arm64"
      sha256 "98dee7fa1aa51ef28a04ef68dfd87d7e2fe9bf9324ef0f5086ade2bec1a196a6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3574/magpie-cli-linux-amd64"
      sha256 "b73ff126b4df5efc295f157ed0b0d2b326a1fa0a4d847ed1ff9c3a577c13f0c3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
