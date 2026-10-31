class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2499/magpie-cli-darwin-arm64"
      sha256 "8dce870c57a4eaec71df04704a7b730f1938a77afe6c6060589c6ea09cb44f79"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2499/magpie-cli-darwin-amd64"
      sha256 "ba1a6dfe83ce32a2c65503a8ad6e093d8d5cfa5fc47c15d9ca5dbc43bd5fb5b1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2499/magpie-cli-linux-arm64"
      sha256 "51847be904fe2e97fa2523e387d044ae6b1d95539486d47132a99fb50405781b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2499/magpie-cli-linux-amd64"
      sha256 "3428001b7d8e7d0e82ee05ec170bfcddcbd83ddcad93e7ff23556fc99dee40d0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
