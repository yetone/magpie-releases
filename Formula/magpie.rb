class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2819/magpie-cli-darwin-arm64"
      sha256 "267560c18196c23ae25b2f99df9d9c7992d151a7c7eb9c65650374936c2e753d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2819/magpie-cli-darwin-amd64"
      sha256 "ac8ffeece638fdaade48d17dcf6ce59a0079f04b7c6ed6659eeee59f60c085b1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2819/magpie-cli-linux-arm64"
      sha256 "29740a89e5d1521a580cd2562715e428ba87cff0ab9f23db08fa525e79775c98"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2819/magpie-cli-linux-amd64"
      sha256 "180c3e1ea37dddc7db530990ef5b6909c4d049710c4f0f212d5ef00c50a29f9d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
