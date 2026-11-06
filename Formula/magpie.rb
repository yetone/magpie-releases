class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3199/magpie-cli-darwin-arm64"
      sha256 "915b4ae2c1cf772695a9ed0ac45eefd928ebc36d5a8aa542262001f05dd4cd0f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3199/magpie-cli-darwin-amd64"
      sha256 "9c476aca77b460597996149e2777e13111a06e79c93523cd889740ab83f9c8b7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3199/magpie-cli-linux-arm64"
      sha256 "eb6a803e6803e331f2fa846086456f235a311ee487abbd1be1521f3efc2bf790"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3199/magpie-cli-linux-amd64"
      sha256 "09ca77e7ef4379bdd73a717e66d9ba4fb6649e786183bfc62d91fc955aa737a1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
