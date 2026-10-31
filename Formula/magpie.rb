class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2442/magpie-cli-darwin-arm64"
      sha256 "b790ba75557832f4c74f17506528b6f5dd4fd8fb0c7d9ede517d32961b15a8b2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2442/magpie-cli-darwin-amd64"
      sha256 "3dfb1b707bf15b913b78903ef7af7c74a1bd1820238c13a9244c5a7e16ccc369"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2442/magpie-cli-linux-arm64"
      sha256 "da8eafa3d40591b096c8def44fdc3e7e9896417a9e05e6b5a6086c7be2bed244"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2442/magpie-cli-linux-amd64"
      sha256 "142ab89fef8baf9e10bd3fd7f610d012b0d97be48846fcebf4a50b2738d2b644"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
