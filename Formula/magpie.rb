class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4595/magpie-cli-darwin-arm64"
      sha256 "4cd6d9b528f01052a3650d6b6ee0d5a6935f22a6e785daed2197a71a71a8acc4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4595/magpie-cli-darwin-amd64"
      sha256 "1386d7330497ee3c7c8bbf68908cfc80f7c2e3e091eff535b183c6439e929938"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4595/magpie-cli-linux-arm64"
      sha256 "a701f8e7f08e3d3281f53227f8093e20ac5ec76c2768e7e97a8e2e2405a396a1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4595/magpie-cli-linux-amd64"
      sha256 "349782f9cce4275f06bc52791a720b89cbb052158029da415ce01c7c06aee702"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
