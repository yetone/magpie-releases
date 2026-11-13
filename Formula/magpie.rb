class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4025/magpie-cli-darwin-arm64"
      sha256 "13850855203741625975246266fe5cf23377cb132e712615a946cc6570b5a26e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4025/magpie-cli-darwin-amd64"
      sha256 "15fa032c418803dda4d78480713e96fe7875aa91930b871d60ec09df7c4a4976"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4025/magpie-cli-linux-arm64"
      sha256 "1448d3a758a7a60cbc63bb82b4d9ff33ec09f080d64faa278cafa7d384267539"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4025/magpie-cli-linux-amd64"
      sha256 "288ae19bf5bb72ed40b5d09f5ca42156f5bc00e2b64476c7682ffa31d1bd23a1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
