class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5006/magpie-cli-darwin-arm64"
      sha256 "46195d58214de30579fbd774a82c4e68ecbf5b744d351cb6596062d422fcd767"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5006/magpie-cli-darwin-amd64"
      sha256 "287a70566d133d9b6dc38944885d52d9f6f4ee38a2635ae0dca1163c4f38b3e9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5006/magpie-cli-linux-arm64"
      sha256 "c7b9a60d05b0770a28eeefdcdbbdc4dabca4235f16e1aacffe07eea7df9bda7b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5006/magpie-cli-linux-amd64"
      sha256 "b3be322aad8b23a8b57c966a3bf83bcd8eafd20b003a162bd40c8688bddb7434"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
