class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2407/magpie-cli-darwin-arm64"
      sha256 "940832ee3c8d9fbf9bbfb0164c824ae7f9cc450e7798ae7ed71666c66e245116"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2407/magpie-cli-darwin-amd64"
      sha256 "3441a79674dea6228384e83b93bef9b9c7ab39953567b9fc01211ee6d686d0c9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2407/magpie-cli-linux-arm64"
      sha256 "d0247cd22edd10a51a6e7270f60c5939ac5cdc02decd26661f187a94c2235739"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2407/magpie-cli-linux-amd64"
      sha256 "4252fa3aa7e5da51b6a65cf36a6fb208cb269989ea8be8b09a6b29ab29c30ca3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
