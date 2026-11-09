class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3436/magpie-cli-darwin-arm64"
      sha256 "e5c82ad5418976c8721b4a4807113b25357a4f5dbcc3cd0ded9ebd8f7088a15b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3436/magpie-cli-darwin-amd64"
      sha256 "5f12bcd8ccbcd6ed42ff893dc172ea38f7cc96d11f26836c5b07645d0c4986db"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3436/magpie-cli-linux-arm64"
      sha256 "831ea5ecbaa0afd9156a6747935700445b0184d952038414eaf81d6c88c51d57"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3436/magpie-cli-linux-amd64"
      sha256 "2638b153099a08aa853213652ccb8780afced7c5538412afef368b7faa01b9a8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
