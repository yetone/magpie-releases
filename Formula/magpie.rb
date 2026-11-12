class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3949/magpie-cli-darwin-arm64"
      sha256 "218de81cfa143acf4532f41eb55d6fd523f524b800c71eab06d63b336b9a80e4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3949/magpie-cli-darwin-amd64"
      sha256 "5ade609861ae8aee64ddde641815bb51c41482c19fb06a5c1f965fa4658b6db6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3949/magpie-cli-linux-arm64"
      sha256 "039e00696527600bdfc966619aef3a2ffc8d1c08c40b55eeea9c2111f7ba1335"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3949/magpie-cli-linux-amd64"
      sha256 "42e532b02edecb3eb9b8cfaaf94b18c565a3207f91ad5d35ad2ccb193b3b3ce5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
