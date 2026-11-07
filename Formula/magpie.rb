class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3225/magpie-cli-darwin-arm64"
      sha256 "0696bd97c9f929c57be109e2294e7065e94741bbf546f345a4ff3acf01995b4b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3225/magpie-cli-darwin-amd64"
      sha256 "5dc048a835c6e4541f3c4b07dcb85e49b3e0295d332a3c926e891d00411fa0a5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3225/magpie-cli-linux-arm64"
      sha256 "46b6179bf36ab4bf5fa326d3204dc88b2b98fabcf15c0f7c0e1fc8355ddebde6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3225/magpie-cli-linux-amd64"
      sha256 "dde9af93abcef98eafff22ecaa4220747817ea53f3224314225b93d9e0dbea10"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
