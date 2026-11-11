class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3785/magpie-cli-darwin-arm64"
      sha256 "69305803433ab68c5a4d1f4f120f7f471f04c398116d70013ad3df75a00436d9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3785/magpie-cli-darwin-amd64"
      sha256 "d7c032e5b8351fe5b823051a60bbc40183de43539a382f917e25df3e15db3eeb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3785/magpie-cli-linux-arm64"
      sha256 "645ef8523d493bc0d7b9cbf75e14bf336e1314af1047e01768325c451d53b14f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3785/magpie-cli-linux-amd64"
      sha256 "1a6116ec70c4a81d239167a81308d6b9f102740289597ca7b05ea1e1ad76aebf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
