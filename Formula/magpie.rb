class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3129/magpie-cli-darwin-arm64"
      sha256 "1b00c894b568683e3552a680a37b17a54a50700e7d8554bee11c0cdd094f0a02"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3129/magpie-cli-darwin-amd64"
      sha256 "592f1a378f7e5386d804696f29eab0625768571c973f10ced0779acd9bb4cac9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3129/magpie-cli-linux-arm64"
      sha256 "549b50a5e5d6843e3a61eeec65e42977b82a72edaa0995fe897b62b0b394c32c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3129/magpie-cli-linux-amd64"
      sha256 "68b4063c589741f4ecc7224b87ba308c90de803ce04143c09f319a49d751cc0d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
