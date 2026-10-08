class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1110/magpie-cli-darwin-arm64"
      sha256 "194c8802fa86dee8e555e0439caffe0894c820ecaeffc99e92da22ab8db66681"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1110/magpie-cli-darwin-amd64"
      sha256 "0faeb68a76413c59481e41ad0fa73975ee96351c5d25467d550f41ee56a18d72"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1110/magpie-cli-linux-arm64"
      sha256 "fce02af2adb80fa24aefe7d116ccd673a6c038adc21a5113c58f40eb69bec5c9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1110/magpie-cli-linux-amd64"
      sha256 "7f5949235969ba85fde71bd3c3d4b15e3fd135d17ef46200ec4f700bf9ede734"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
