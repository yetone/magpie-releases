class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2801/magpie-cli-darwin-arm64"
      sha256 "6123f801e39bf26d3962d0f7009302d8fc950b1635c949f8e6657feda4f230b0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2801/magpie-cli-darwin-amd64"
      sha256 "ec5c533820bcbff0d899d56897b6e510a41063918c8f4f41a89bd5ac836c5635"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2801/magpie-cli-linux-arm64"
      sha256 "a463c588e16cc64c217cc29d8786841c828a1f3f471fd5036a0ad319ee637442"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2801/magpie-cli-linux-amd64"
      sha256 "f0678246a805aaece1df3ae87f9bf1465360b70520442a5997a81047feb58d7d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
