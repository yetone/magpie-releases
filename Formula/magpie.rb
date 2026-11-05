class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3030/magpie-cli-darwin-arm64"
      sha256 "9f691c8af45055f020c01e122c3c2cd7c4d6235c7d6d02e788deef240d7db931"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3030/magpie-cli-darwin-amd64"
      sha256 "06d03b9f15a2fdff5cd6c923e45728d4017ad3fb6e8305b352066deedc37cb40"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3030/magpie-cli-linux-arm64"
      sha256 "aa42fc5c527b9f34a0a3b5a9574eed16e15c264101bad2d2912ce5f9bcdfeede"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3030/magpie-cli-linux-amd64"
      sha256 "161d343201f2dea6806a893e460836d8ec526eb3a68650344019afb03b272024"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
