class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4662/magpie-cli-darwin-arm64"
      sha256 "97d30cc2359ca691b5b20c44f085b8ca6a3dbe75653eb31eac7cb4bf399703fa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4662/magpie-cli-darwin-amd64"
      sha256 "04a5ef3e3acfc0d906e218bbbfd8448090d3360adcd208965d6a3f9f685dfe3b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4662/magpie-cli-linux-arm64"
      sha256 "15467589d107134bee3f12fdfdd84ae1c4a73fea787d18bca1f3c214533bdf89"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4662/magpie-cli-linux-amd64"
      sha256 "64ad1efd598a0064516d92ff680320bec7e61dc1fb6725df8e152ac44b8d56a0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
