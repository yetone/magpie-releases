class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2097/magpie-cli-darwin-arm64"
      sha256 "427b9e5badd3795021cbc7caecf3ec141d3327483bd8417f7dc49ae289215a0c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2097/magpie-cli-darwin-amd64"
      sha256 "fb88994a2df818f18b487b0864c1c51e8c05eccbdfa8016aed441e8dd6ac295e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2097/magpie-cli-linux-arm64"
      sha256 "ef9a52de036741afe0fa98af71646250147ddc957f5cfbce3aebdafe83d7611f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2097/magpie-cli-linux-amd64"
      sha256 "6acd0ac7ffea61a286334b36e28a5ea4c5cbf8e99ee6e211fd196dbdaedfb6fc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
