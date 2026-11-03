class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2785/magpie-cli-darwin-arm64"
      sha256 "d1477524f060efaa51ffc7686fe5be6c2ba730686a98bbfb4f4d8f6e64485623"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2785/magpie-cli-darwin-amd64"
      sha256 "df0cb133c30db63ebb46a344d834e635a76f48aeb275ee27499d930b23ada1d4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2785/magpie-cli-linux-arm64"
      sha256 "61500bcbcbba2ec8e857e620413b36f8db71ceb6715d704b24f98d0aee6dc56c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2785/magpie-cli-linux-amd64"
      sha256 "514744e3d7a6cb81d44a8dae54ec6694bea80548b062d4dffd70938aeee58116"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
