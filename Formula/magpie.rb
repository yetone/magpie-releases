class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1905/magpie-cli-darwin-arm64"
      sha256 "89120e8519937c6179fc56eca0e4da6764804164560fda8634d438361bd0e303"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1905/magpie-cli-darwin-amd64"
      sha256 "6076fb600d348b9ac65638760a2bd6af45919f60689a27e2b7239036df271609"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1905/magpie-cli-linux-arm64"
      sha256 "e99acf5f315933e3661d8afd58fb61e0f28129fe9d68999e31568fd5579acbec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1905/magpie-cli-linux-amd64"
      sha256 "3b7c777e179a68bfd1ff8840aefde689e72cc39922f31bd5530800f3dba9a9b0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
