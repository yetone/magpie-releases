class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3841/magpie-cli-darwin-arm64"
      sha256 "532fe13a732f3248569ef0f35ca4bbd8f7f678e63f8a0e3a79f124b3225ff53c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3841/magpie-cli-darwin-amd64"
      sha256 "ecf7f7141db4e882300df2cfd548e496eaff383d5e6b98ced22018a9daac24b2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3841/magpie-cli-linux-arm64"
      sha256 "adfa7f7aca01e64f5dad9ca815440baba262218a27a2651a0f1136f0440fa65f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3841/magpie-cli-linux-amd64"
      sha256 "81212b442f271c81ca2db5b3e10c7b6f7d03831cc5ae8eded3bdb026b45bd198"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
