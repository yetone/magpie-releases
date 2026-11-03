class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2818/magpie-cli-darwin-arm64"
      sha256 "5df456fa2ab4139b4ae76181eeef580299bc0d897c118d91b33ecb0566621c89"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2818/magpie-cli-darwin-amd64"
      sha256 "5c28b65301e7b45700e0e5d24a430cbd8b9bb8089741aaec89a6e5a706c54a0f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2818/magpie-cli-linux-arm64"
      sha256 "9e682925aa46158bca7edb16aca5dcc2a1cbd3bf52caf8e73f1ab0142ba495cb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2818/magpie-cli-linux-amd64"
      sha256 "7cd9cfb4017ad837e2de234bc2fa365029ee0ae7f1648e577e3ad3d7abec232a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
