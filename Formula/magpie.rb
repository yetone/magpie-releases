class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4847/magpie-cli-darwin-arm64"
      sha256 "b9b4aea9331917b63d63051cbe9af027fc8b2c7071b4c5661f120c14bb0fdd22"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4847/magpie-cli-darwin-amd64"
      sha256 "aa830a5b2965cded3910e7bd4347b3cfa16d953acb4f06cfff7c36ba0267df18"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4847/magpie-cli-linux-arm64"
      sha256 "cbba985ac8c06b1b6c8a3008a52edc9886bd2cdf453d3b0594eea50b32f69c60"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4847/magpie-cli-linux-amd64"
      sha256 "e6fb09cba28d3bb8b2dc7961caa28faff9009f6a65e47df802d5b7b4ac62402a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
