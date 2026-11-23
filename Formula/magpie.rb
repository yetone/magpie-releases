class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4726/magpie-cli-darwin-arm64"
      sha256 "96d24c74728ffb5039e2d7424958921580871ea3871a37c32e26c179f90ede79"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4726/magpie-cli-darwin-amd64"
      sha256 "ecc7099bc4c2d9b1d8bd957faa453e0e53ed07a26b5c16a7f78b011bf6e92557"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4726/magpie-cli-linux-arm64"
      sha256 "0fcc3e43b5ad70e7faf700931662b3aca0eaaedde6ab85c77cd118f321c25a47"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4726/magpie-cli-linux-amd64"
      sha256 "871b68db7a1ffc021c29d57ac4931ec0fab040df308a0acaaa95e617e946f749"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
