class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2043/magpie-cli-darwin-arm64"
      sha256 "73a8015658c747bdcb616215f82c246bc304a28d673fee7378b9dc945e6e58ba"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2043/magpie-cli-darwin-amd64"
      sha256 "9f771d3b6b96c631b7bb77ff4b4de16f84a1ee4c9761064f05456511a6b71959"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2043/magpie-cli-linux-arm64"
      sha256 "342ee89ce552bfd0ca15a6b8f0015060b13f84ad3d2af54d17e5bc9f2c60510f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2043/magpie-cli-linux-amd64"
      sha256 "dc363e3c8c33a0c008a5fca226188d926eb8ceb3bae540a45753d7adf28116d4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
