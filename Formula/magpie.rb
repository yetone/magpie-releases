class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2795/magpie-cli-darwin-arm64"
      sha256 "de2d3f42bacceb87ea3c18098d4bb0fe0c9485a2664679483d31e392c772ab85"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2795/magpie-cli-darwin-amd64"
      sha256 "97de0f91fc3f7461d34afe02b3b1f173231a5f3424e6ff61613009989cffc2ba"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2795/magpie-cli-linux-arm64"
      sha256 "027f3e3f548c083937b54f090eeb3094ca1d7b077a90529d6b177b2d4a9bac72"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2795/magpie-cli-linux-amd64"
      sha256 "58e73f38ed0bf469d911a1a0076f4387be460ea659b1387f8ba84d48a8d1f8e0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
