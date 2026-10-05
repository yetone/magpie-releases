class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1053/magpie-cli-darwin-arm64"
      sha256 "1f175ed80501bb5a5f4bb2fbf9dc6937d2b6a4f43a26e1f898d2afb26730d2f8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1053/magpie-cli-darwin-amd64"
      sha256 "b15da9edbfa5d884ee868eac1ac6864467cc7be6230521b5de4cf80ebacabd9a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1053/magpie-cli-linux-arm64"
      sha256 "edcf35685a4ea9c170e46f77f1868548fdd94c33726f09190ad881efa8c2b0c7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1053/magpie-cli-linux-amd64"
      sha256 "8f1839383c7aef62b8d02a9493315ce2e67328bb126d5f2de5c4708d86f0452c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
