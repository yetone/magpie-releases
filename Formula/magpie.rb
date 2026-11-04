class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2986/magpie-cli-darwin-arm64"
      sha256 "803f00d2a378a2ccbdb9ffb93b40b31abccb634ee70a23bf16aa082a3ed43214"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2986/magpie-cli-darwin-amd64"
      sha256 "f4cfcf35e47b9aeeb7c067fd85411d5352b1c0920d8a3809bd6aa750872c3a6f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2986/magpie-cli-linux-arm64"
      sha256 "586fea7c639e60bec64130b74ed6407fecb4c4bac903bd27971a72983bab8c07"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2986/magpie-cli-linux-amd64"
      sha256 "11da10e8b621471c3cad99f6655d48e9ca7241b08be1ef64d40b6ad38c9f17d8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
