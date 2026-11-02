class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2763/magpie-cli-darwin-arm64"
      sha256 "dd401674ca5d8e7d9e9b29975619455b919a1a6019d150e7094f920d09197688"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2763/magpie-cli-darwin-amd64"
      sha256 "02e93127a6ff875314dfbf071ad34a9f41e0382d926790fe9994013464388315"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2763/magpie-cli-linux-arm64"
      sha256 "70abf198aa68eb10284a13325c2afea322d98acfac600918bdd1168dc8f300ed"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2763/magpie-cli-linux-amd64"
      sha256 "6c546a45fb4adb8202118eb06826dd46a2a2feed0ac9bf45c87d77b9bc5a378b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
