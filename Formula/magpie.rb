class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2337/magpie-cli-darwin-arm64"
      sha256 "cb3826bb66e7bd835c1f7025f8ed2692507adc20f0dce6cf6b16234642749357"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2337/magpie-cli-darwin-amd64"
      sha256 "9c16486443a63a968fc107d2cd1f08bad59d577c810c41a5eb01b519568abf88"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2337/magpie-cli-linux-arm64"
      sha256 "92382ab2b59832057bd8d36de1b0659cc807387de6d9a778fecdc6796b0f1a1b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2337/magpie-cli-linux-amd64"
      sha256 "6a8c9370ba14e697d272187517ef3d6b5884a1198c8c4a42c6a3c846bbff8a2c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
