class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2164/magpie-cli-darwin-arm64"
      sha256 "07f0b19c5f0c93f4aaf3ce7a00558810e28f00f4d4e9a876189343e4c48e8e9f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2164/magpie-cli-darwin-amd64"
      sha256 "17c34941a7f29552388476174a63cf7bc2e409d0f627285a4146871c600c3b3f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2164/magpie-cli-linux-arm64"
      sha256 "d70bfdfbd933bc91cf0fa7f294d4812418851d2562347c9e7f995fbb5cce920d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2164/magpie-cli-linux-amd64"
      sha256 "ebd4a41ec10b757e8134cdc8c2cb7d78450a01cd0c423e9c0fe3e0d311dc7b1e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
