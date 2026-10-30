class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2188/magpie-cli-darwin-arm64"
      sha256 "16daf8083d7af307ee803eb43ce0deb5bccd0214b3c22b9d5d76be8cd4393846"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2188/magpie-cli-darwin-amd64"
      sha256 "95819b44d2516a632f8becabd1c8469b1feb6958a8a5e28ce782b38e3a596482"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2188/magpie-cli-linux-arm64"
      sha256 "6e39b606ef1e74028e1fdf2a5b2f4e743925bd86a49947817f7976e48e4b2c2d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2188/magpie-cli-linux-amd64"
      sha256 "bacb019c7d30cbf86ef20ced19e05443cce3e8557a19b25972ce81825be12c17"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
