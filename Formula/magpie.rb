class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2232/magpie-cli-darwin-arm64"
      sha256 "b7a9d4180c0c4a479ed8a864714ccf7bbb9e401576d3d39d8ef47ddfa1eb37ce"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2232/magpie-cli-darwin-amd64"
      sha256 "09914d7ed7132e60a9f441fc1650494a235e28e6abe1ecea240d1a0e3b8d3066"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2232/magpie-cli-linux-arm64"
      sha256 "c0ccef3993a5327e877ec0020a78fc7e0a030950d2652f6e9d04ae06e1bea081"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2232/magpie-cli-linux-amd64"
      sha256 "1ff3b447ff79d7ca3ecbc13bf2a44baa5763158ca0c0f7ec6dcebddb9841ac22"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
