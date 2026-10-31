class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2373/magpie-cli-darwin-arm64"
      sha256 "fbeb434461db50b6bc9ba2630414e15780edcdbebb0ece2ba852713b134949f3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2373/magpie-cli-darwin-amd64"
      sha256 "6567ad21bb26937ac292319521f44e0794650d1c7f88ff3e5123b46d4dbb2f36"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2373/magpie-cli-linux-arm64"
      sha256 "302c8af92a4e0a23c194e403edbe9f5fbb393ed1768215e92f5e8d4097931911"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2373/magpie-cli-linux-amd64"
      sha256 "1d0ad0b6635bf3cdfc2d0400071e0b014c4dbbef0407ca36619ce002f39b402f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
