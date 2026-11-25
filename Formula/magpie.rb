class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4797/magpie-cli-darwin-arm64"
      sha256 "236ade87564bcb0c653ad53b4c67512486d4b595db87ed386d3f03b3906a1994"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4797/magpie-cli-darwin-amd64"
      sha256 "27709255af1f6115fef1419ed9419b80a36ea4bb82c08820f870817b5b4b7f66"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4797/magpie-cli-linux-arm64"
      sha256 "c11105eb0f0592398e31fa0dd50ea0163d8816d37d2c38de11c72262773e8f6a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4797/magpie-cli-linux-amd64"
      sha256 "def83f36b4c3ab61c13e0fce430c54da7bf07a3aa0dcab4b3eca25057096ecf4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
