class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2168/magpie-cli-darwin-arm64"
      sha256 "220a5696c02676e967623e8a2a165f2c2662c98db35616f107ceb0856fcece6d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2168/magpie-cli-darwin-amd64"
      sha256 "ba8b48265ad1bd265ddaa43ef1f4db7404b2e8655963fde7ba0b337a5c3c4f22"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2168/magpie-cli-linux-arm64"
      sha256 "51b45a51201a48a78b2781664ccd998088aa69fdc9f0459a22933a6a23701457"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2168/magpie-cli-linux-amd64"
      sha256 "423784b078c8e5d5fc3a5221be7ca50a9e3cad469718c3ed9077b917557a525f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
