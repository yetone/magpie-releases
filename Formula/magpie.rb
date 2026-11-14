class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4138/magpie-cli-darwin-arm64"
      sha256 "c84b06fcbf8d4b0d9824cbd190451aff89ab17af77579a9b54faf9af47f3d538"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4138/magpie-cli-darwin-amd64"
      sha256 "abcc7431eafb94b0cb76ebc42edf4bdbaac15a641ae3a364159ad3b2e5945d9f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4138/magpie-cli-linux-arm64"
      sha256 "243ff155cda6fc4bb6690ab0204543c695408d3f368227adc91093bedceaea2a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4138/magpie-cli-linux-amd64"
      sha256 "b465571602660922a4910606b2a3a747674555dc91adfa80583b8d92c848482a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
