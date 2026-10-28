class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1857/magpie-cli-darwin-arm64"
      sha256 "2ed137897c2faabf61fb3ae88fa81273db330de839cc6a1297b6db255523a2cb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1857/magpie-cli-darwin-amd64"
      sha256 "9bfb75e9b90dff45f794b313264f0a672e0103de96f97ca83203a6c6bf0f92e4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1857/magpie-cli-linux-arm64"
      sha256 "196022bf4b4980a25af566be927c90867bb0c43234c1fb30ada4987fb032b764"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1857/magpie-cli-linux-amd64"
      sha256 "b6b6f6c460310cfdff1e59c939d803637cdede45e4622275f6c06e31258d41bf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
