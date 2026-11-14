class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4112/magpie-cli-darwin-arm64"
      sha256 "85427f15b06b878967a84d22bb78ee24ac440de1ca6b786df2e31969acdfc162"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4112/magpie-cli-darwin-amd64"
      sha256 "ef0d225e23e475e56438c33ea5cf68069f720386cbb5bb37fa8482f10381055c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4112/magpie-cli-linux-arm64"
      sha256 "25aecef85df0be492fba5618fa3ea435515cd8d8298eba2191a98babbf3bbe89"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4112/magpie-cli-linux-amd64"
      sha256 "617cd9d497cec797e2791216ffc752c06712e1c805a944b1ce4a99105649bdd4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
