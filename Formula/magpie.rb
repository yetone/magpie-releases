class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2073/magpie-cli-darwin-arm64"
      sha256 "e004b905cc9087f4cf447f3ebe035e54a04ce7541c1841fa68d9dd08bed99593"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2073/magpie-cli-darwin-amd64"
      sha256 "6486a28cd1cae6b66c1376d308d1d1a7d6f4f13c98bb04b60d4504fbfc4dbe99"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2073/magpie-cli-linux-arm64"
      sha256 "b254344e9f65aaf9f990563f5ea5f56d09afc92c4a3d6bda2086b99188593af6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2073/magpie-cli-linux-amd64"
      sha256 "3be73ff11348eae755220345fa3d8929dbc6197dd6570e49072b61d86dceacc6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
