class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4667/magpie-cli-darwin-arm64"
      sha256 "1f396139c476d69ddd93fdd8614727f75997e21dbff36d7874d24551047ab958"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4667/magpie-cli-darwin-amd64"
      sha256 "ce362f634cac92fd14e7af1b053afc4151c546bf84325e9ef6050a83bea57abe"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4667/magpie-cli-linux-arm64"
      sha256 "392f86cf622c4a82c2611d27434b96951affab8d1183669aac0a386e719c43c8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4667/magpie-cli-linux-amd64"
      sha256 "e379bdaa52114a9ce14c735b6a681c922dd6e7a8e6d100e8094971092055c838"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
