class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4255/magpie-cli-darwin-arm64"
      sha256 "ec4d0296fd304f0b6aa75ddcdecc2732f7298e3a3a305f2df446d80d8ffcca3e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4255/magpie-cli-darwin-amd64"
      sha256 "cea87799e257fe9f4400ad38512fb5730803399e4e61e380ba647dc063654a6b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4255/magpie-cli-linux-arm64"
      sha256 "b82b3d12738ccb4618704008afc379fd082d97d7dae419058c598a45882ae140"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4255/magpie-cli-linux-amd64"
      sha256 "ce847290ea44998ed7f776a03f043075bdb09f1ab7c59a1e8b1ee9f7b93de9cd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
