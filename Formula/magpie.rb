class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3652/magpie-cli-darwin-arm64"
      sha256 "a5d54359ff0210aa09ee1a191895a560817b0355fa196fe21d2c2a6697bf11cd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3652/magpie-cli-darwin-amd64"
      sha256 "f87d510ebfd4ae5a569b6fb35579ac63e96e92f376c6022952a432548d540390"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3652/magpie-cli-linux-arm64"
      sha256 "8b47bf7f76529981690b3b11609744f1d47334f9b4fd29a5884d6a520a15ffae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3652/magpie-cli-linux-amd64"
      sha256 "95dc6cc0b35ccd376626cb0701ee74295dafd65ac30f90965f45fd8f012eec43"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
