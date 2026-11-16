class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4324/magpie-cli-darwin-arm64"
      sha256 "6c222d6577d3a33a41c24fc98146aa9c4f0e9d88d5acc1070c2773f6d647b364"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4324/magpie-cli-darwin-amd64"
      sha256 "39647bad45917278ed17019f32db26ad38eeaf155d86672bb2928b4608b5d8ac"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4324/magpie-cli-linux-arm64"
      sha256 "9066c08491b06ba799875677848a31221191348497c9204b92d074473fdc0c58"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4324/magpie-cli-linux-amd64"
      sha256 "7f7b95a1402907109acd82dc3bd83ffb67d9d59caea72cce09a5f8c9b302ec41"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
