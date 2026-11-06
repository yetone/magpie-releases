class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3164/magpie-cli-darwin-arm64"
      sha256 "44fba265674a971e1854318427bc7e1971073fb1218633f5243bfe7956e30f38"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3164/magpie-cli-darwin-amd64"
      sha256 "ef2adb033b5ab3727a245d8ec1e8bc57f8d4ba090e0d3cd10e5d0d482e7efc73"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3164/magpie-cli-linux-arm64"
      sha256 "a2c4246f31acfec63936b726654105b686ced7ccd3d9fa68ce132c9f20a7cc93"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3164/magpie-cli-linux-amd64"
      sha256 "07ef9c0ada1997fa3c70405a28b782df7f9bb6949ec9da3cdddffd32f3bbe60f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
