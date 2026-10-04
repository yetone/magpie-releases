class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.904/magpie-cli-darwin-arm64"
      sha256 "4433a34072bb83bb11cc8250a29e332de0d61f0ea6b988429766c294e9a5ba8a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.904/magpie-cli-darwin-amd64"
      sha256 "82931468e44efc936e286c6a8a8539390260182a3e782bb0c96f17be61aef4cb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.904/magpie-cli-linux-arm64"
      sha256 "84cdbd75582ccac2975e16cc6b62de4a7873ab37783852b8a760006f7cea9875"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.904/magpie-cli-linux-amd64"
      sha256 "30420ce7a8fec6d0b51ef80655994267cd0f441eafbc55f71fb0686699fc2e51"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
