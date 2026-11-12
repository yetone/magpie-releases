class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3817/magpie-cli-darwin-arm64"
      sha256 "40446fd4b0eac74bc355c297c0a126e7828898e7dd7fb71ff9d857f91b2c4217"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3817/magpie-cli-darwin-amd64"
      sha256 "5d58b0d9b7910ff34bde8f8706a9e26e71c5bcf1dddf7d8055a7647583bbaf4e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3817/magpie-cli-linux-arm64"
      sha256 "06af00c768d3c4de22cddd82fb73fe92827f9d2da9efec149365d429bfec60ce"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3817/magpie-cli-linux-amd64"
      sha256 "1c9347aaf6e431c6913cfd1f16689930a4f99e3fe44d747c77da7f1414f55590"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
